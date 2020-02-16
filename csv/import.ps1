$tempAttributes = @()
$collectionOfPeople = @()

function attribute([string]$line) {
  Write-Host $line  "attribute"
  $tempAttributes += $line
}
function name([string]$line) {
  Write-Host $line  "name"

  #is a $newPerson ever instantiated?
  $newPerson = [PSCustomObject]@{
    Name       = $line
    Attributes = $tempAttributes
  }
  $newPerson  #empty?  no output
  $collectionOfPeople += $newPerson
  $tempAttributes = @()
}

$output = switch -regex -file people.csv {

  '\d' { attribute($_) ; $_ }
  default { name($_); $_ }
}
#how to read the file from top to bottom?
#[array]::Reverse($output)

#$output

$collectionOfPeople  #empty???
$tempAttributes = @()
$collectionOfPeople = @()

function attribute([string]$line) {
  #Write-Host $line  "attribute"
  $tempAttributes += $line
#  Write-Host $tempAttributes
}
function name([string]$line) {

  $newPerson = [PSCustomObject]@{
    Name       = $line
    Attributes = $tempAttributes
  }

  # Write-Host $line  "name"
#  Write-Host $tempAttributes
  $newPerson.Name = $line
  $newPerson.Attributes = $tempAttributes
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

$collectionOfPeople
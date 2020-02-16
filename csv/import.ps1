



$tempAttributes = @()
$collectionOfPeople = @()

function attribute([string]$x)
{
  Write-Host $x  "attribute"
  $tempAttributes += $x
}
function name([string]$x)
{

  $newPerson = [PSCustomObject]@{
    Name       = $line
    Attributes = $tempAttributes
  }

  Write-Host $x  "name"
}




$output = switch -regex -file people.csv {

  '\d' { attribute($_) ; $_ }
  default { name($_); $_ }
}

[array]::Reverse($output)

#$output

$raw = import-csv "./people.csv"
[array]::Reverse($raw)

class OnePerson {
  [string] $name
  [string[]] $Attribute
}

$tempAttributes = @()

$collectionOfPeople = @()


$tempPerson = [OnePerson]::new()

ForEach ($line in $raw) {
  $tempAttributes += $line    
  if ($line -match '[0-9]') {
    write-host "---------------"
  }
  else {
    Write-Host "######"
    $tempPerson.name = $line
    $tempPerson.Attribute = $tempAttributes
    $collectionOfPeople += $tempPerson
    $tempPerson = [OnePerson]::new()
    $tempAttributes = @()
  }

  $collectionOfPeople[0]

}
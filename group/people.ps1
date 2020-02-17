$list = import-csv "./people.csv"
[array]::Reverse($list)

#$list

class OnePerson {
  [string] $name
  [string[]] $Attribute
}

$tempAttributes = @()

$collectionOfPeople = @()


$tempPerson = [OnePerson]::new()

ForEach ($line in $list) {
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

  $collectionOfPeople[1].name
  $collectionOfPeople[1].Attribute
}
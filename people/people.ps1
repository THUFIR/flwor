$raw = import-csv "./people.csv"
[array]::Reverse($raw)

class OnePerson {
  [string] $name
  [string[]] $Attribute
}

$tempAttributes = @()

$arrayOfPeople = @()


$tempPerson = [OnePerson]::new()

ForEach ($line in $raw) {
  $tempAttributes += $line    
  if ($line -match '[0-9]') {
    write-host "---------------"
  }
  else {
    Write-Host "######"
    $tempPerson.name = $line
    $arrayOfPeople += $tempPerson
    $tempPerson = [OnePerson]::new()
    $tempAttributes = @()
  }

  $arrayOfPeople[0]

}
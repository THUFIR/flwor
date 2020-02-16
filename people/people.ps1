$raw = import-csv "./people.csv"
[array]::Reverse($raw)

class OnePerson {
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
    $tempPerson.Attribute = $tempAttributes
    $arrayOfPeople += $tempPerson
    $tempPerson = [OnePerson]::new()
    $tempAttributes = @()
  }

  $arrayOfPeople[0]

}
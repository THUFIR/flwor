$raw = import-csv "./people.csv"
#$raw = [array]::Reverse($raw)

class OnePerson {
  [string[]] $Attribute
}

$tempAttributes = @()

$arrayOfPeople = @()


$tempPerson = [OnePerson]::new()

ForEach ($line in $raw) {
  if ($line -match '[0-9]') {
    write-host "---------------"
    $tempAttributes += $line    
  }
  else {
    Write-Host "######"
    $tempPerson.Attribute = $tempAttributes
    $arrayOfPeople += $tempPerson
    $tempPerson = [OnePerson]::new()
    $tempAttributes = @()
  }

  $arrayOfPeople

}
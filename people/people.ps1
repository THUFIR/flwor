$people = import-csv "./people.csv"
[array]::Reverse($people)

$tempAttributes = @()

class OnePerson {
  [string[]] $Attribute
}

$foo =[OnePerson]::new()

ForEach ($person in $people) {
  $tempAttributes += $person
  if ($person -match '[0-9]') {
    write-host "---------------"
    $tempAttributes    
    $tempAttributes = @()
  }else {
    Write-Host "######"
  }

}
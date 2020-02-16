$people = import-csv "./people.csv"
[array]::Reverse($people)

$tempAttributes = @()



class OnePerson {
  [string[]] $Attribute
}



ForEach ($person in $people) {
  $tempAttributes += $person
  if ($person -notmatch '[0-9]') {
    write-host "---------------"
    $tempAttributes    
    $tempAttributes = @()
  }
}
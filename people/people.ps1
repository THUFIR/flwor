$people = import-csv "./people.csv"


class OnePerson {
  [String] $A
  [String] $B
  [String] $C
  [String] $D

  people () { } 
}

$myPerson = New-Object -TypeName OnePerson

$manyPeople = New-Object System.Object

$myArray = @()
$myAttributes = @()

ForEach ($person in $people) {

  if ($person -match '[0-9]') {
    Write-host $person
    #$myAttributes += $person
  }
  else { 
    write-host "new person"
    write-host $person
    #    $myPerson something here to add attributes...

    

    $diff = 4 - $myArray.Count
    for ($i = 0; $i -lt 4; $i++) {
   #   $myArray[$i] = "null"
    }
    for ($i = 0; $i -lt $myArray.Count; $i++) {

    }
    $myArray += $myPerson
    $myAttributes = @()
    $myPerson = New-Object -TypeName OnePerson
  }
}

write-host $myArray

$people = import-csv "./people.csv"
[array]::Reverse($people)

$myAttributes = @()


$myObject = New-Object System.Object

ForEach ($person in $people) {
  $myAttributes += $person
  if ($person -notmatch '[0-9]') {
    $lastIndex = $myAttributes.count - 1
    $myAttributes[$lastIndex]
    write-host "---------------"
    $myObject | Add-Member -MemberType NoteProperty -Name `ID` -Value -Force 'KevinMarquette'
    $myAttributes    
    $myAttributes = @()
  }
}
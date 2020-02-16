$text = Get-Content -Raw ./people.csv
[array]::Reverse($list)


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
  else {}

$records = $text -split '\r?\n(?=[a-z '-]+\r?\n)'
foreach ($person in $records) {
    $details = $person -split '\r?\n'
    
    [PSCustomObject]@{
        Name = $details[0]
        # Fill in other details here from the rest of the pieces
    }
}

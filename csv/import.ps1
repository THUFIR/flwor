$text = Get-Content -Raw ./people.csv
[array]::Reverse($text)

$tempAttributes = @()
$collectionOfPeople = @()

$newPerson = [PSCustomObject]@{
  Name       = $line
  Attributes = $tempAttributes
}

ForEach ($line in $text) {
  if ($line -notmatch '[0-9]') {
    $tempAttributes += $line    
  }
  else {
    $newPerson = [PSCustomObject]@{
      Name       = $line
      Attributes = $tempAttributes
    }
    $newPerson
    $tempAttributes = @()
    $collectionOfPeople += $newPerson
  }
}

#$collectionOfPeople
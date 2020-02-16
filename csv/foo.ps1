$list = Get-Content -Raw ./people.csv
[array]::Reverse($list)

$tempAttributes = @()
$collectionOfPeople = @()

ForEach ($text in $list) {
  if ($text -notmatch '[0-9]') {
    $tempAttributes += $text    
  }
  else {
    $newPerson = [PSCustomObject]@{
      Name        = $details[0]
      $Attributes = $tempAttributes
    }
    $tempAttributes = @()
    $collectionOfPeople += $newPerson
  }
}

$collectionOfPeople.count
$text = Get-Content -Raw ./people.csv
[array]::Reverse($text)

$tempAttributes = @()
$collectionOfPeople = @()

ForEach ($line in $text) {
  if ($line -notmatch '[0-9]') {
    $tempAttributes += $line    
  }
  else {
    $tempAttributes   
    $newPerson = [PSCustomObject] {
      Name        = $line
      Attributes  = $tempAttributes
    }
    Write-Host $newPerson
    $tempAttributes = @()
    $collectionOfPeople += $newPerson
  }
}

#$collectionOfPeople
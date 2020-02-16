$text = Get-Content -Raw ./people.csv
[array]::Reverse($text)

$tempAttributes = @()
$collectionOfPeople = @()

ForEach ($line in $text) { 
  if($line -notmatch '.*?[0-9].*?') {
    $tempAttributes += $line 
    Write-Host "matches digits"   
  }
  else {
    Write-Host "no digits"   
    $newPerson = [PSCustomObject]@{
      Name       = $line
      Attributes = $tempAttributes
    }
    $tempAttributes = @()
    $collectionOfPeople += $newPerson
  }
}

$collectionOfPeople
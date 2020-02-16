$text = Get-Content -Raw ./people.csv
[array]::Reverse($text)


$tempAttributes = @()
$collectionOfPeople = @()

$newPerson = [PSCustomObject]@{
  Name       = $line
  Attributes = $tempAttributes
}



ForEach ($line in $text) {
  $line
  if ($line -match '[0-9]') {
    $tempAttributes += $line 
    Write-Host "woot"   
  }
  else {
    Write-Host "nope"   
    $newPerson = [PSCustomObject]@{
      Name       = $line
      Attributes = $tempAttributes
    }
    $tempAttributes = @()
    $collectionOfPeople += $newPerson
  }
}

$collectionOfPeople
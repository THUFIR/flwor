$list = Get-Content -Raw ./people.csv
[array]::Reverse($list)

$tempAttributes = @()
$collectionOfPeople = @()

ForEach ($line in $list) {
  if ($line -match '[0-9]') {
    $tempAttributes += $line    
  }
  else {
    $foo = [PSCustomObject]@{
      Name        = $details[0]
      $Attributes = $tempAttributes
    }
    $tempAttributes = @()
    Write-Host "----------------"
    Write-Host $foo
  }
}

$list
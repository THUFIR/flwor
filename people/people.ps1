$people = import-csv "./people.csv"
#$people = [array]::Reverse($people)

class OnePerson {
  [string[]] $Attribute
}

$tempAttributes = @()


$foo =[OnePerson]::new()

ForEach ($line in $people) {
  $tempAttributes += $line
  if ($line -match '[0-9]') {
    write-host "---------------"
    $tempAttributes += $line    
    $tempAttributes = @()
  }else {
    Write-Host "######"
  }

$people

}
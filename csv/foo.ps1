$text = Get-Content -Raw ./people.csv

$records = $text -split '\r?\n(?=[a-z '-]+\r?\n)'
foreach ($person in $records) {
    $details = $person -split '\r?\n'
    
    [PSCustomObject]@{
        Name = $details[0]
        # Fill in other details here from the rest of the pieces
    }
}

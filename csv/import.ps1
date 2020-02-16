




function yess([string]$x)
{
  Write-Host $x
}
function noo([string]$x)
{
  Write-Host $x
}




$output = switch -regex -file people.csv {

  '\d' { yess($_) ; $_ }
  default { noo($_); $_ }
}

[array]::Reverse($output)

$output

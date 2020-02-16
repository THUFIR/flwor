
$output = switch -regex -file people.csv {

  '\d' { "yes" ; $_ }
  default { "no"; $_ }
}

[array]::Reverse($output)

$output

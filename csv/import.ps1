
switch -regex -file people.csv {
  '\d' { "yes" ; $_ }
  default { "no"; $_ }
}
xquery version "3.0";

let $y := 99

for $x in (1 to 9)
count $iterator
let $decrease := $y - $iterator
return(
  comment { "iterator = " ||  $iterator },
  comment { "decrease = " || $decrease },
  <xy x='{ $x }' y='{ $decrease }'/>
)

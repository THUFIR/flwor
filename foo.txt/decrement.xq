xquery version "3.0";

let $y := 99

for $x in (1 to 9)
 let $y := $y - 1

return <xy x='{$x}' y='{$y}' />


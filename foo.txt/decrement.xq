xquery version "3.0";

let $y := 99
let $z := 0

for $x in (1 to 9)
count $iterator
let $y := $x - $iterator
let $z := $z - $iterator

return <xyz x='{$x}' y='{$y}' z='{$z}' />



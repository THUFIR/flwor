xquery version "3.0";

let $y := 99

for $x in (1 to 9)
 let $y := $y - 1
let $z := $y - 2

return <xyz x='{$x}' y='{$y}' z='{$z}' />

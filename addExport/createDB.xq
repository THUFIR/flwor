let $database := "people"
for $name in file:list('.', false(), '*.txt')
let $file := file:read-text($name)
let $txt := text:parse($file)
return db:add($database, $txt, $name) 

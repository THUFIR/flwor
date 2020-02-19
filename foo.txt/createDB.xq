let $database := "foo"
for $name in file:list('.', false(), '*.txt')
let $file := file:read-text($name)
let $text := text:parse($file)
return db:add($database, $text, $name) 

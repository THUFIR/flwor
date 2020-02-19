xquery version "3.0";

<xml>

{

for $line in db:open("foo.txt")//text()
count $id
return    if (matches($line, "[0-9]"))
         then <person id='{$id}' x="x" numerical="true">{$line}</person>
         else <person id='{$id}' x="x" numerical="false">{$line}</person>
}
</xml>

xquery version "3.0";

<xml>
{
for $line in db:open("foo.txt")//text()
count $id
return
	<foo id='{ $id }' numerical="false">{$line}</foo>
}
</xml>

for $line in db:open("foo.txt")
count $id



where (matches($line, "[0-9]"))


return
<result>
{$line}
</result>


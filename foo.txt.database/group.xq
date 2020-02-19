for $line in db:open("foo.txt")
count $id


let $books := //line(SOME $y IN author/lastname = $a)
where (matches($line, "[0-9]"))


return
<result>
{$a} { $books[1 to 10] }
</result>


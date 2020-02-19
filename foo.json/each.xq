
xquery version "3.0";

<ul>
{
for $foo in db:open("people.json")
return <li>{data($foo)}</li>

}
</ul>

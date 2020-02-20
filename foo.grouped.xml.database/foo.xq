xquery version "3.0";

db:add("foo.clean.xml",

<xml>

{

for $x in db:open("foo.txt")/text/line

return $x


}

</xml>

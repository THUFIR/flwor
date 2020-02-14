
xquery version "3.0";

declare namespace office="urn:oasis:names:tc:opendocument:xmlns:text:1.0";

for $foo  in db:open("foo")
return  data($foo)



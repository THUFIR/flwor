xquery version "3.0";

declare namespace output = "http://www.w3.org/2010/xslt-xquery-serialization";

declare option output:method 'xml';
declare option output:indent 'yes';
    
for $name in db:open("foo.grouped.reversed.xml")/csv/record/fubar

return rename node $name as "data"

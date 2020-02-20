xquery version "3.0";


declare namespace output = "http://www.w3.org/2010/xslt-xquery-serialization";

declare option output:method 'xml';
declare option output:indent 'yes';

<xml>
{
    for tumbling window $person in db:open("foo.txt")/text/line
    start $name next $data when matches($name, '^[^0-9]+$') and matches($data, '[0-9]')
    return
        <person>
        {
            <name>{ data($name) }</name>,
            tail($person) ! <data>{data()}</data>

        }
        </person>
}    
</xml>




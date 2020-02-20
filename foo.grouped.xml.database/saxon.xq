xquery version "3.0";


declare namespace output = "http://www.w3.org/2010/xslt-xquery-serialization";

declare option output:method 'xml';
declare option output:indent 'yes';

<csv>
{
    for tumbling window $person in db:open("foo.txt")/text/line[node()]
    start $name next $data when matches($name, '^[^0-9]+$') and matches($data, '[0-9]')
    return
        <record>
        {
            <name>{ data($name) }</name>,
            tail($person) ! <data>{data()}</data>

        }
        </record>
}    
</csv>


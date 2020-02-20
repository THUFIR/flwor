xquery version "3.0";

let $x := db:info("foo.txt")//*:resourceproperties/*:timestamp


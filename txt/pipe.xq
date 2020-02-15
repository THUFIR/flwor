  <doc>{
    for $foo in db:open("text")
    return
      if (matches($foo, "[0-9]")) 
      then <data>{$foo}</data>
      else <name>{$foo}</name>
  }</doc>


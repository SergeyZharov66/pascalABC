{Перевод выражения из инфиксной формы в постфиксную
Исходная строка набирается через пробел}

function prior(x: string): integer;
begin
  if x in '*/' then result := 2
  else if x in '+-' then result := 1
  else result := 0;
end;

begin
  var opstack := new Stack<string>;
  var res := new List<string>;
  var y: string;
  
  var a := ReadString('Строка: ').Split;
  foreach var x in a do
  begin
    if x not in '*+-/()' then res.Add(x);
    if x = '(' then opstack.Push(x);
    if x = ')' then
    begin
      y := opstack.Pop;
      while y <> '(' do
      begin
        res.Add(y);
        y := opstack.Pop;
      end;
    end;
    if x in '*+-/' then 
    begin
      if opstack.Count > 0 then 
      begin
        y := opstack.Peek;
        if prior(y) >= prior(x) then res.Add(opstack.Pop);
      end;
      opstack.Push(x);
    end;
  end;
  while opstack.Count > 0 do res.Add(opstack.Pop);
  println(res)
end.  



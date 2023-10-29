##
//Задача 272 из лингвистических олимпиад
function isBracketTrue(s: string): boolean;
var scob := new stack<char>;
begin
  foreach var x in s do
    if x = '(' then 
      scob.push(x)
    else if (scob.Count <> 0) and (x = ')') then
      scob.pop()
    else if (scob.Count = 0) and (x = ')') then
      scob.Push(x);
  if scob.count = 0 then 
    result := True
  else
    result := False;  
end;

println(isBracketTrue('((x(xx))x)'));
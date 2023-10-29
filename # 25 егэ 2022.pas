##
// задача 25 демо егэ 2022
function minDel(a: integer): integer;
begin
  for var i := 2 to a - 1 do
    if a.Divs(i) then 
    begin
      result := i;
      break;
    end;
end;

function maxDel(a: integer): integer;
begin
  for var i := a - 1 downto 2 do
    if a.Divs(i) then
    begin
      result := i;
      break;
    end;
end;

var j := 700001;
var k := 1;
while true do
begin
  var s:=maxDel(j) + minDel(j);
  if s mod 10 = 8 then
  begin
    println(j, s);
    k += 1;
    if k > 5 then
      break;
  end;
  j += 1;
end; 
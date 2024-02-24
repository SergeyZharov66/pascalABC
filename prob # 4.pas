##
uses school;

function PowerInt(x, n: integer): integer;
begin
  if n = 0 then result := 1
  else
  begin
    var p := 1;
    for var i := 1 to n do
      p *= x;
    result := p;
  end;  
end;

var n := 4;
for var x := 0 to PowerInt(2, n) - 1 do
begin
  var res: string;
  var l := bin(x).Length;
  if l < n then res := (n - l) * '0' + bin(x) 
  else res := bin(x);
  res.println
end; 
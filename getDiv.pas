library getDiv;

interface

function Divs(n: integer): List<integer>;
implementation

function Divs(n: integer): List<integer>;

begin
  var s:=new List<integer>;
  s.Add(1);
  for var i:=2 to n-1 do
    if n mod i = 0 then
      s.Add(i);
  result:=s;    
end;
end.

unit my;
interface
/// Функция возведения в степень с целым результатом
function PowerInt(x, n: integer): integer;
implementation
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
end.


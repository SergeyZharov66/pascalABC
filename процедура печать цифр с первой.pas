var n : integer;
procedure cif(a:integer);
var x,kol,t : integer;
begin
  x:=a; kol:=0;
  while x>0 do
  begin
    x:=x div 10;
    kol:=kol+1;
  end;
  for var i:=kol-1 downto 0 do
  begin
    t:=a div trunc(power(10,i));
    println(t);
    a:=a-t*trunc(power(10,i));
  end;
end;
begin
  print('Число ');
  readln(n);
  cif(n);
end.
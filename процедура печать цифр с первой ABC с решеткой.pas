##
procedure Цифры(число:integer);
begin
  var x:=число; 
  var kol:=0;
  while x>0 do
  begin
    x:=x div 10;
    kol+=1;
  end;
  for var i:=kol-1 downto 0 do
  begin
    var t:=число div trunc(power(10,i));
    println(t);
    число:=число-t*trunc(power(10,i));
  end;
end;
  print('Число ');
  var n:=ReadInteger;
  Цифры(n);

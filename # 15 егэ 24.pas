##
var a := 0;
var flag := true;
while True do
begin
  for var x := 0 to 60 do
    for var y := x downto 0 do
      if x + 2 * y >= a then flag := false;
  if flag then 
  begin
    println(a);
    exit;
  end
  else 
    begin
      a += 1;
      flag := true;
    end;  
end; 
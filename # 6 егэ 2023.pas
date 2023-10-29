##
var col := 0;
for var x := 1 to 9 do
  for var y := -1 to -9 step -1 do
  begin
    var y1 := -sqrt(3) * x;
    var y2 := sqrt(3) * x - 17.3;
    if (y > y1) and (y > y2) then 
    begin
      println(x, y);
      col += 1;
    end;
  end;
println(col); 
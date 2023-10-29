##
//Демо ЕГЭ 2022 № 27(B)

function maxsum(iterable: array of integer): (integer, integer);
begin
  var (maxsofar, maxendinghere) := (0, 0);
  var kol := 0; 
  var c := 0;
  foreach var x in iterable do
  begin
    maxendinghere := max(maxendinghere + x, 0);
    if (maxendinghere <> 0) and (maxendinghere mod 43 = 0) then
      kol += 1 
        else
    begin
      kol := 0;
      maxendinghere := 0;
    end;
    if (maxendinghere > maxsofar) and (maxendinghere mod 43 = 0) then
    begin
      maxsofar := maxendinghere;
      c := kol; 
    end;
  end;
  result := (maxsofar, c);
end;

var a := ReadAllLines('27_B.txt');
a := a[1:];
var b := a.ConvertAll(x -> x.ToInteger); 
var t1:=DateTime.Now.Millisecond;
println(maxsum(b));
var t2:=DateTime.Now.Millisecond;
println(t2-t1)
//на компе в школе работает 90 мсек, дома - 32 мсек
//компилятор Паскаля в 15 раз быстрее Питона на этой задаче
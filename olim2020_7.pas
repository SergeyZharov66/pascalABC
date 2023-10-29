##
//Раскраска, олимпиада № 7
//только для квадратной матрицы размером не более 4 на 4
var n := 3;
var m := 3;
var c := 3;
var s2 := ArrGen(n, i -> i).Combinations(2).ToArray.Cartesian(n - 1).ToArray;
while True do
begin
  var k := 0;
  var a := MatrRandom(n, m, 1, c);
  foreach var x in s2 do
  begin
    var b := a.MatrSlice(x[0][0], x[0][1], x[1][0], x[1][1]);
    var i := b.ColCount;
    var j := b.RowCount;
    if b[0, 0] + b[0, i - 1] + b[j - 1, 0] + b[j - 1, i - 1] = 4 * b[0, 0] then
      k := 1
  end;
  if k = 0 then 
  begin
    a.Println;
    break;
  end;
end; 
##
// ПР Очереди, уровень С ответ 200
var a := new Queue<integer>;
assign(input, 'd:\dats.txt');
{Первичное заполнение очереди
первыми шестью элементами с 1-й по 6-ю секунды}
for var i := 1 to 6 do
begin
  var x := ReadInteger;
  a.Enqueue(x);
end;
var m := 0; // максимальный из считанного и первого в очереди
var sum_m := integer.MinValue;
while True do
begin
  try
    var x := ReadlnInteger;
    m := max(x, a.Dequeue); // первый из очереди уходит
    a.Enqueue(x); // считанный становиться в конец очереди
    sum_m := max(sum_m, m + x);
  except
    break; 
  end;  
end;
println(sum_m)
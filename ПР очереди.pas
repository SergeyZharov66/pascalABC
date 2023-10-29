##
// ПР очереди, уровень А
var a := new Queue<integer>;
var f: text;
var s := 0;
var msum := 0;
assign(f, 'd:\dats.txt'); //dat_que.txt');
reset(f);
loop 6 do
begin
  s := ReadlnInteger(f);
  a.Enqueue(s);
end;
var sum := a.Peek + s;
msum := max(sum, msum);
while not eof(f) do
begin
  a.Dequeue;
  s := ReadlnInteger(f);
  a.Enqueue(s);
  sum := a.Peek + s;
  msum := max(sum, msum);
end; 
close(f);
print(msum)
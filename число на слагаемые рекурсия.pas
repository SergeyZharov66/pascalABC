// Разбиение числа на сумму слагаемых;
// Шень (7edition),стр. 126
var n := ReadInteger('Число: ');
var a := ArrGen(n, t -> 1);
var (s,t) := (0,0);

procedure generate;
begin
  if s = n then 
    println(a[:t + 1])
  else begin
    for var i := 1 to min(a[t], n - s) do
    begin
      t := t + 1;
      a[t] := i;
      s := s + i;
      generate;
      s := s - i;
      t := t - 1;
    end;
  end;
end;

begin
  for var j := 1 to n do
  begin
    a[0] := j;
    s := j;
    generate;
  end; 
end.
{Шень,стр. 128-129
граф из учебника Полякова 10,на стр. 41
Возможен не один вариант сортировки}
var printed := ArrGen(10, t -> False);
var num := Arr(3, 2, 2, 2, 2, 1, 2, 1, 1, 0);
var adr := new Dictionary<integer, array of integer>;
var t := ArrGen(10, t -> t);
var t1 := ||1, 2, 3|, |2, 4|, |4, 5|, |2, 6|, |7, 9|, |9|, |5, 8|, |9|, |9|, |0||;
var ver := 'АБВГДЕЖЗИК';
  
procedure add(i: integer);
begin
  if not printed[i] then
  begin
    {напечатанное корректно}
    for var j := 0 to num[i] - 1 do
      add(adr[i][j]);
    {напечатанное корректно, все вершины, в которые из
    i ведут стрелки, уже напечатаны - так что можно
    печатать i, не нарушая корректности}
    if not printed[i] then 
    begin
      print(ver[i + 1]);  
      printed[i] := True;
    end;
  end;
end;

begin
  for var i := 0 to t.Length - 1 do
    adr.Add(t[i], t1[i]);
  for var i := 0 to 9 do 
    add(i);
end.
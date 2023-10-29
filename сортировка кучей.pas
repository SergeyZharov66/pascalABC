//сортировка кучей,смотри жемчужины программирования стр. 187
var
  a:=ArrRandom(20,0,70);

procedure siftup(n: integer); //просеивание снизу
var
  i := n;
begin
  while true do
  begin
    if i = 0 then break;
    var p := i mod 2 = 0 ? i div 2 - 1 : i div 2;
    if a[p] <= a[i] then break;
    (a[p], a[i]) := (a[i], a[p]);
    i := p;
  end;
end;

procedure siftdown(n: integer); //просеивание сверху
var
  i := 1;
begin
  while true do
  begin
    var c := 2 * i;
    if c > n then break;
    if c + 1 <= n then
      if a[c] < a[c - 1] then c += 1;
    if a[i - 1] <= a[c - 1] then break;
    (a[c - 1], a[i - 1]) := (a[i - 1], a[c - 1]);
    i := c;
  end;
end;

begin
  //шаг 1 - формируем из исходного массива кучу
  for var i := 1 to a.Length - 1 do
    siftup(i);

  //шаг 2 - упорядочиваем ее по убыванию
  for var i := a.Length - 1 downto 1 do
  begin
    (a[0], a[i]) := (a[i], a[0]);
    siftdown(i - 1);
  end;
  a.Println
end.

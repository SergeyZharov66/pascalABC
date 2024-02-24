// ханойские башни без рекурсии,
// но со стеком
// Шень, стр. 141
var
  stek := new Stack<(integer, integer, integer)>;

procedure move(i, m, n: integer);
begin
  stek.Clear;
  stek.Push((i, m, n)); 
  {инвариант: осталось выполнить заказы в стеке}
  while stek.Count > 0 do 
  begin
    var (j, p, q) := stek.Pop;
    if j = 1 then 
      Println('сделать ход', p, '->', q)
    else 
    begin
      var s := 6 - p - q;
      {s - третий стержень: сумма номеров равна 6}
      stek.Push((j - 1, s, q));
      stek.Push((1, p, q));
      stek.Push((j - 1, p, s));
    end;
  end;
end;

begin
  move(5, 1, 3);
end.
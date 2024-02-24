var
  a := Arr(3, 8, 2, 1, 9, 5, 2, 4, 11,12,17,18); // кол-во элементов в массиве - степень 2

var
  tree := new integer[a.Length+1];

procedure BinTree(x: array of integer);
var
  k := log2(x.Length).Ceil; //уровни дерева
var
  i := 0;
var y:=x;
begin
  while True do
  begin
    if k = 1 then break else
    begin
      foreach var p in y.Batch(2) do
      begin
        if i>=tree.High then SetLength(tree,i+1); 
        tree[i] := p.Min;
        i += 1;
      end;
    k-=1;
    y:=tree;
  end;
  end;
end;

begin
  BinTree(a);
  println(tree);
end.
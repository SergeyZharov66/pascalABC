var
  a := Arr(3, 8, 2, 1, 9, 5, 2, 4); 

var
  tree := new List<integer>;
  tree_cur := new List<integer>;

procedure BinTree(x: array of integer);
var
  k := log2(x.Length).Ceil; //уровни дерева
var
  i := 0;
var
  y := x;
begin
  while True do
    if k = 0 then break else
    begin
      foreach var p in y.Batch(2) do
        tree_cur.Add(p.Min);
      k -= 1;
      tree.AddRange(tree_cur);
      SetLength(y, tree_cur.Count);
      y := tree_cur.ToArray;
      tree_cur.Clear;
    end;
end;

function nompar(n:integer):integer:=n mod 2 =0 ? n div 2 : (n+1) div 2;

function GetMin:=tree.Item[tree.Count-1];

procedure ReMake(n:integer); //n - индекс измененного элемента
begin
  var npar:=nompar(n+1);
  var k := log2(a.Length).Ceil;
  if npar mod 2 =0 then tree[npar-1]:=min(a[npar],a[npar+1])
      else tree[npar-1]:=min(a[npar+1],a[npar+2]);
  for var i:=2 to k do;
        
end;

begin
  BinTree(a);
  println(tree);
  println(GetMin);
  a[3]:=-1;
  ReMake(3);
end.
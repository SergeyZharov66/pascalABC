//сдвиг влево на одну позицию,последний элемент - 0
begin
  var a := Arr(2, 4, 5, 6, 4);
  for var i := 0 to a.Length - 2 do
    a[i] := a[i + 1];
  a[^1] := 0; // последний элемент
  a.Println
end.
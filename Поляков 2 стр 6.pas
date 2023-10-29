begin
  (var a, var b) := ReadInteger2;
  var p: integer:=0;
  for var i := 1 to abs(b) do
    p += a;
  print(b < 0 ? -p : p)
end.
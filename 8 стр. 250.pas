begin
  var a:=Arr(1,2,3,4,5,6,7,8);
  for var i:=0 to (a.Length-1) div 2 do
    (a[i],a[a.Length-1-i]):=(a[a.Length-1-i],a[i]);
  print(a)
end.
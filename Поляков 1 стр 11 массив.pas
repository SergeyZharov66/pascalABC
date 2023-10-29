begin
  var a := Arr(2, 4, 3, 7, 5, 9, 5, 12, 3, 5);
  sort(a);
  println(a);
  var kol:=1;
  for var i:=0 to 8 do
      if a[i]<>a[i+1] then kol+=1;
  println(kol)
end.

##
uses school;

var n := 800000;
var kol := 0;
while True do
begin
  var L := n.Divisors;
  var m := L[1] + L[L.count - 2];
  if m mod 10 = 4 then 
  begin
    println(n,'  ',m);
    kol += 1;
  end;
  if kol = 5 then break else n += 1;  
end; 
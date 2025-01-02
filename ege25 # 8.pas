##
uses school;
var kol:=0;
for var n:=20736 to 248831 do
begin
  var s12:=ToBase(n.ToString,12);
  if (s12.MatchValues('7').count=1) and (s12.MatchValues('9|A|B').count<=3) then kol+=1;
end;
println(kol)
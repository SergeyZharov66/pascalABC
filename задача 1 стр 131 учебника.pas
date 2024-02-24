##
var s:=new integer[3];
for var n:=100 to 999 do
begin
   s[0] := n div 100 + 6; //старшие
   s[1] := (n div 10) mod 10 + 9; //средние
   s[2] := n mod 10 + 4; //младшие
   s.SortDescending;
   var c_string:=s[0].ToString+s[1].ToString+s[2].ToString;
   if c_string.ToInteger=11108 then println(n);
end;
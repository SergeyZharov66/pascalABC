##
var maxs:=-1;
var mins:=1000;
for var n := 100 to 999 do
  for var m := 100 to 999 do
  begin
    var s1 := n div 100 + m div 100; //старшие
    var s2 := (n div 10) mod 10 + (m div 10) mod 10; //средние
    var s3 := n mod 10 + m mod 10; //младшие
    var s := s3.ToString + s1.ToString + s2.ToString;
    var kont:= s.Length>3 ? s.Substring(s.Length-4,3) : s.Substring(s.Length-3,2) ;
    maxs:=max(kont.ToInteger,maxs);
    mins:=min(kont.ToInteger,mins);
  end; 
print(maxs,mins)  
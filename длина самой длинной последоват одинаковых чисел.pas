##
var a:=ArrRandom(10,10,15);
a.Println;
var kol:=1;
var m:=0;
a.foreach((t,i)-> begin if (i<a.High) and (a[i]=a[i+1]) then begin kol+=1; m:=max(m,kol) end else kol:=1 end);
m.Println


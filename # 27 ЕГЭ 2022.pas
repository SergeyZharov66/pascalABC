##
//Демо ЕГЭ 2022 № 27(A)
function intConv(x:string):integer;
begin
  var y,err:integer;
  val(x,y,err);
  result:=y;
end;
var a := ReadAllLines('27_A.txt');
a:=a[1:];
var b:=a.ConvertAll(x->intConv(x));
var maxs,lenmax:integer;
for var t:=0 to b.Length-1 do
  begin
    var s:=0;
    var j:=0;
    for var k:=t to b.Length-1 do
      begin
        j+=1;
        s+=b[k];
        if s mod 43=0 then
            if s>maxs then
              begin
                maxs:=s;
                lenmax:=j;
              end; 
      end;
  end;    
print(lenmax)
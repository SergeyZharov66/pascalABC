##
var (n,m):=ReadInteger2('n,m= ');
var res:=1;
for var i:=n downto n-m+1 do
  res*=i;
print(res)  
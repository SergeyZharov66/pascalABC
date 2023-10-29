##
var k:=0;
for var i:=17 to 80 do
  if (i in 17..58) and (i not in 29..80) then k+=1;
print(k)
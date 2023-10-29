##
//Задача № 24 из демо ЕГЭ 2023 с регулярным выражением
var s1:=ReadAllLines('24_23.txt')[0]
.RegexReplace('[A|O][C|D|F]',m->'1'); 
var col:=0;
var m:=0;
s1.ForEach(t-> begin if t='1' then col+=1 else begin m:=max(col,m); col:=0; end; end);
println(m); 


##
var s1:=ReadAllLines('24.txt')[0]
.RegexReplace('P{2,}',m->';')
.split(';')
.select(t->t.length)
.Max;

println(s1+2);


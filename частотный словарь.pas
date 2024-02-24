##
var a:=ArrRandom(50,-20,130).println;
a.GroupBy(c->c).ToDictionary(t->t.key, t-> t.count).Println;

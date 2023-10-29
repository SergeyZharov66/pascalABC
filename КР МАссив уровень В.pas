##
var a:=ArrRandom(ReadInteger('n='),0,100).println.Pairwise.ToArray;
var b:=a.Select(x->x[0]*x[1]).ToArray;
var ind:=b.FindIndex(x->x=b.max);
print('Элементы',a[ind],'индексы',ind,ind+1)
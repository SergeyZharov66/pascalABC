##
//Демо ЕГЭ 2023 № 17
// Решение в функциональном стиле
var st := ReadAllLines('17_1.txt').ConvertAll(t -> t.ToInteger);
var st1:=st.Pairwise.Where(x -> (abs(x.Item1 mod 10) = 3) xor (abs(x.Item2 mod 10) = 3));
var m:=st.Select(x->x).Where(x->x mod 10 = 3).max;
var st2:=st1.Select(x -> sqr(x.Item1) + sqr(x.Item2)).Where(x->x>=sqr(m));
st2.Count.Println;
st2.Max.Println;
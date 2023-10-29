##
//Демо ЕГЭ 2022 № 17
// Решение в функциональном стиле
var st := ReadAllLines('17.txt')
.ConvertAll(t -> t.ToInteger)
.Pairwise.Where(x -> (x.Item1 mod 3 = 0) or (x.Item2 mod 3 = 0));
st.Count.Println;
st.Select(x -> x[0] + x[1]).Max.Println; 
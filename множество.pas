##
{ Создайте множество натуральных чисел, не превышающих 100 000. Разбей-
те его на два подмножества, первое из которых содержит все простые числа исход-
ного множества, а второе — все остальные его члены. }
uses school;
var a := new HashSet<integer>(ArrGen(20,i->i,1));
var b:=a.ToArray;
println('Исходное -',a);
a.SymmetricExceptWith(Primes(20));
Println('Составные и 1 -',a);
a:=b.ToHashSet;
a.IntersectWith(Primes(20));
Println('Простые -',a)

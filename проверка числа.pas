##
var stroka := '36428594490313158783584452532870892261556';
var s := BigInteger.Parse(stroka);
var summ : biginteger; 
foreach var x in stroka do
  summ+=Power(BigInteger(x.toDigit),42);
if s=summ then println('Да') else println('Нет')
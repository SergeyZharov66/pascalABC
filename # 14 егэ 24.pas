##
uses school;
var s : biginteger := 3*Power(BigInteger(3125),8) + 2*Power(BigInteger(625),7) - 4*Power(BigInteger(625),6) + 3*Power(BigInteger(125),5) - 2*Power(BigInteger(25),4) - 2024;
ToBase(s.ToString,25).Where(t->t='0').Count.Println;

##
uses school;
var a := TrueTable((x, y, z, w) -> not y.Imp(x=w) and z.Imp(x)); 
TrueTablePrint(a,1) 
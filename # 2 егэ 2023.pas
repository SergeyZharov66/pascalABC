##
uses school;
var a := TrueTable((x, y, z, w) -> not (y.Imp(x)) or z.Imp(w) or not z); 
TrueTablePrint(a,0) 
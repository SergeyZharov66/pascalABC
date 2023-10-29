##
//проверка палиндрома
var s:=ReadString.RegexReplace('(?i)[^A-ZА-Я]','').ToUpper;
print(s=s.Inverse);


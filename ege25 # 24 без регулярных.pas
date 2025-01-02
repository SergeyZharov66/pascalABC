##
var f := ReadAllText('D:\Архив\ЕГЭ ИНФ\inf_11_2025\Доп.файлы_2025\Задание 24\demo_2025_24.txt');
var kol_max := integer.MinValue;
var cur_st := '';
var flag := False;
var shablon := Arr('--', '-*', '*-', '**');
var shablon1 := Arr('00', '06', '07', '08', '09');
var i := 1;
while i <= f.Length do
begin
  cur_st += f[i];
  if cur_st.Left(2) = '-0' then flag := True;
  if cur_st.Left(1) = '*' then flag := True;
  foreach var x in shablon do
    if x in cur_st then 
    begin
      flag := True;
      i -= 1;
    end;  
  if (cur_st.IndexOf('-0') <> -1) or (cur_st.IndexOf('*0') <> -1) then
    foreach var t in '06789' do
      if (cur_st.IndexOf('-0' + t) <> -1) or (cur_st.IndexOf('*0' + t) <> -1) then 
      begin
        flag := True;
        i -= 1;
      end;  
  if cur_st.Left(2) in shablon1 then 
  begin
    flag := True;
    i -= 1;
  end;  
  if flag then
  begin
    cur_st:=cur_st[:cur_st.Length-1];  //последние два символа исключаем из строки - они некорректны
    kol_max := max(kol_max,cur_st.Length);
    flag := False;
    cur_st := '';
  end;
  i += 1;
end;
kol_max := max(kol_max, cur_st.Length);
println('max=', kol_max); 
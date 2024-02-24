##
{Пусть есть список положительных достоинств монет coins, 
отсортированный по возрастанию. напишите процедуру razmen, 
которая разбивает переданную ей положительную сумму денег 
на монеты достоинств из списка coins всеми возможными 
способами. Например, если coins = [2, 3, 7], то результат 
будет [[2,2,3],[2,3,2],[3,2,2],[7]]}

procedure razmen(summa: integer; nominals: array of integer; lst: List<integer>);
begin
  if summa = 0 then println(lst) else
    for var i := 0 to nominals.High do
      if nominals[i] <= summa then 
        razmen(summa - nominals[i], nominals, lst + Arr(nominals[i]).toList);
end;

razmen(7, Arr(2, 3, 7), new List<integer>); 
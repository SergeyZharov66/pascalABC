##
//Частотный анализ текста "Княжна Мери"
var a := ReadAllText('mary.txt',encoding.UTF8).toLower.Where(c->c.isLetter and c.InRange('А','я')); 
a.GroupBy(c->c).ToDictionary(t->t.key, t-> t.count).OrderByDescending(t->t.value).println

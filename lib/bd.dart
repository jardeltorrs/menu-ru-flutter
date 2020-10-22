class Dados{
  int _day;
  Dados(int day){
    this._day = day;
    sla();
    print("entrou");
  }
  List <List<String>> food= [
   [
     "Salada",
     "Principal",
     "Vegetariano",
     "Acompanhamentos",
     "Guarnição",
     "Suco",
     "Sobremesa"
   ],
   [
     "Alface, cenoura, beterraba e melão",
     "Fejoada",
     "Feijoada vegetariana",
     "Arroz Branco, Arroz Itegral, Feijão Carioca",
     "Farofa",
     "Acerola",
     "ou Melancia ou doce"
   ]
 ];
void sla(){
  for(int i=0;i<food[0].length;i++){
    print(food[0][i]);
    print(food[_day][i]);
  }
}
}
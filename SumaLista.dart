import 'dart:math';

void main (){
  List<int> numeros = List.empty(growable: true);
  int tamanioLista, numero;
  int resultado = 0;

  var random = Random();
  tamanioLista=random.nextInt(30);
  //Llenado de la lista
  for(int i=0; i < tamanioLista; i++)
  {
    numero=random.nextInt(1000);
    numeros.add(numero);
  }
  print("El tamanio de la lista es de  $tamanioLista items" + '\n');
  print("Los elementos de la lista son los siguientes");
  //Doble trabajo pero se lleva separado el procedimiento
  int contador=0;
  while(contador<tamanioLista)
  {
    print('\t' + numeros.elementAt(contador).toString());
    resultado = resultado + numeros.elementAt(contador);
    contador++;
  }

  print("El resultado de la suma de los elementos de la lista es de $resultado");
}
import 'dart:math';
void main (){

  int numero;
  var random = Random();

  numero = random.nextInt(1000000);

  if(numero%2!=0)  
  {
    print("El numero $numero es impar");
  }
  else
  {

    print("El numero $numero es par");
  }
  
}
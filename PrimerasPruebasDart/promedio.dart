import 'dart:math';

void main() {
  List<int> lista = ListaAleatoria(50, 1, 100);
  double promedio = calcularPromedio(lista);
  print('La lista generada es: $lista');
  print('El promedio de la lista es: $promedio');
}

List<int> ListaAleatoria(int longitud, int minimo, int maximo) {
  Random random = Random();
  List<int> lista = [];
  for (int i = 0; i < longitud; i++) {
    int numeroAleatorio = minimo + random.nextInt(maximo - minimo + 1);
    lista.add(numeroAleatorio);
  }
  return lista;
}

double calcularPromedio(List<int> lista) {
  int suma = 0;
  for (int elemento in lista) {
    suma += elemento;
  }
  return suma / lista.length;
}

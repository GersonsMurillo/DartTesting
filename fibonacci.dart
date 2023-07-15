
void main() {
  int cantidadNumeros = 16;
  print("Los primeros $cantidadNumeros números de la secuencia de Fibonacci son:");
  print(0); 
  print(1); 
  fibonacci(cantidadNumeros - 2, 0, 1); 
}

void fibonacci(int n, int a, int b) {
  if (n <= 0) {
    return;
  }

  int c = a + b;
  print(c);
  fibonacci(n - 1, b, c);
}

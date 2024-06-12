import 'dart:math';

void main() {
  Circulo circulo1 = Circulo(radio: 24.6, color: 'Azul');
  circulo1.calcularArea();
  circulo1.calcularPerimetro();

  print("El colo del circulo es: ${circulo1.color}");
}

class Circulo {
  final double radio;
  final String color;

  Circulo({required this.radio, required this.color});
//metodo que calcula el area del circulo
  void calcularArea() {
    print(
        "El area del circulo es ${(pi * pow(this.radio, 2)).toStringAsFixed(2)}");
  }
//metodo del perimetro
  void calcularPerimetro() {
    print("El perimetro del circulo es ${(2 * pi * this.radio).toStringAsFixed(2)}");
  }
}
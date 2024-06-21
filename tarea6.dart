import 'dart:io';
import 'dart:math';

void main() {
  stdout.write('Ingrese el ángulo en grados sexagesimales: ');
  double gradosSexagesimales = double.parse(stdin.readLineSync()!);

  double gradosCentesimales = gradosSexagesimales * 10 / 9;
  double radianes = gradosSexagesimales * (pi / 180);

  print('El ángulo en grados centesimales es: $gradosCentesimales grad');
  print('El ángulo en radianes es: $radianes rad');
}
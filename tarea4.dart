import 'dart:io';
import 'dart:math';

void main() {
  stdout.write('Ingrese el lado 1 del triángulo: ');
  double lado1 = double.parse(stdin.readLineSync()!);

  stdout.write('Ingrese el lado 2 del triángulo: ');
  double lado2 = double.parse(stdin.readLineSync()!);

  stdout.write('Ingrese el lado 3 del triángulo: ');
  double lado3 = double.parse(stdin.readLineSync()!);

  double semiperimetro = (lado1 + lado2 + lado3) / 2;
  double area = sqrt(semiperimetro * (semiperimetro - lado1) * (semiperimetro - lado2) * (semiperimetro - lado3));

  print('El semiperímetro del triángulo es: $semiperimetro');
  print('El área del triángulo es: $area');
}
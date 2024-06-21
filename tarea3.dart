import 'dart:math';
import 'dart:io';

void main() {
  stdout.write('Ingrese el radio del círculo: ');
  double radio = double.parse(stdin.readLineSync()!);

  double area = pi * pow(radio, 2);
  double longitud = 2 * pi * radio;

  print('El área del círculo con radio $radio es: $area');
  print('La longitud del círculo con radio $radio es: $longitud');
}
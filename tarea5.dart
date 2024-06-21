import 'dart:io';
import 'dart:math';

void main() {
  stdout.write('Ingrese la coordenada x del primer punto: ');
  double x1 = double.parse(stdin.readLineSync()!);

  stdout.write('Ingrese la coordenada y del primer punto: ');
  double y1 = double.parse(stdin.readLineSync()!);

  stdout.write('Ingrese la coordenada x del segundo punto: ');
  double x2 = double.parse(stdin.readLineSync()!);

  stdout.write('Ingrese la coordenada y del segundo punto: ');
  double y2 = double.parse(stdin.readLineSync()!);

  double distancia = sqrt(pow(x2 - x1, 2) + pow(y2 - y1, 2));

  print('La distancia entre los puntos ($x1, $y1) y ($x2, $y2) es: $distancia');
}
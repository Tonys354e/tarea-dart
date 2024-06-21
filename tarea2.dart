import 'dart:io';

void main() {
  List<double> sueldos = [];

  for (int i = 1; i <= 3; i++) {
    stdout.write('Ingrese el sueldo del empleado $i: ');
    double sueldo = double.parse(stdin.readLineSync()!);
    sueldos.add(sueldo);
  }

  double aumento1 = sueldos[0] * 0.10;
  double sueldoFinal1 = sueldos[0] + aumento1;

  double aumento2 = sueldos[1] * 0.12;
  double sueldoFinal2 = sueldos[1] + aumento2;

  double aumento3 = sueldos[2] * 0.15;
  double sueldoFinal3 = sueldos[2] + aumento3;

  print('Sueldo final del empleado 1: \$${sueldoFinal1.toStringAsFixed(2)}');
  print('Sueldo final del empleado 2: \$${sueldoFinal2.toStringAsFixed(2)}');
  print('Sueldo final del empleado 3: \$${sueldoFinal3.toStringAsFixed(2)}');
}
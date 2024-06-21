import 'dart:io';

void main() {
  stdout.write('Ingrese la cantidad de segundos: ');
  int segundos = int.parse(stdin.readLineSync()!);

  int horas = segundos ~/ 3600;
  int minutos = (segundos % 3600) ~/ 60;
  int segundosRestantes = segundos % 60;

  print('Horas: $horas, Minutos: $minutos, Segundos: $segundosRestantes');
}
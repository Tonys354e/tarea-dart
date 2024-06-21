import 'dart:io';

void main() {
  stdout.write('Ingrese la temperatura en grados Celsius: ');
  double tempCelsius = double.parse(stdin.readLineSync()!);

  double tempFahrenheit = (tempCelsius * 9 / 5) + 32;
  double tempKelvin = tempCelsius + 273.15;

  print('La temperatura en grados Fahrenheit es: $tempFahrenheit °F');
  print('La temperatura en Kelvin es: $tempKelvin K');
}
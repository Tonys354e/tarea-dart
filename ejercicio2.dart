class Persona {
  String nombre;
  int edad;
  String dni;
  String sexo;
  double peso;
  double altura;

  Persona() : nombre = '', edad = 0, dni = '', sexo = 'H', peso = 0, altura = 0;

  Persona.conNombreEdadSexo(this.nombre, this.edad, this.sexo)
      : dni = '',
        peso = 0,
        altura = 0;

  Persona.conParametros(this.nombre, this.edad, this.dni, this.sexo, this.peso, this.altura);

  int calcularIMC() {
    double imc = peso / (altura * altura);
    if (imc < 20) {
      return -1;
    } else if (imc >= 20 && imc <= 25) {
      return 0;
    } else {
      return 1;
    }
  }

  bool esMayorDeEdad() {
    return edad >= 18;
  }

  void _comprobarSexo(String sexo) {
    if (sexo == 'H' || sexo == 'M') {
      this.sexo = sexo;
    } else {
      this.sexo = 'H';
    }
  }
}

void main() {
  Persona persona1 = Persona();
  print(persona1.esMayorDeEdad());

  Persona persona2 = Persona.conNombreEdadSexo('Ana', 25, 'M');
  print(persona2.calcularIMC());

  Persona persona3 = Persona.conParametros('Juan', 30, '12345678A', 'H', 75.0, 1.75);
  print(persona3.esMayorDeEdad());
  print(persona3.calcularIMC());
}
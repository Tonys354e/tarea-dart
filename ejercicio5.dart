class Persona {
  String nombre;
  int edad;
  String dni;

  Persona({required this.nombre, required this.edad, required this.dni});

  String getNombre() {
    return nombre;
  }

  void setNombre(String nombre) {
    this.nombre = nombre;
  }

  int getEdad() {
    return edad;
  }

  void setEdad(int edad) {
    this.edad = edad;
  }

  String getDni() {
    return dni;
  }

  void setDni(String dni) {
    this.dni = dni;
  }

  void mostrar() {
    print('Nombre: $nombre');
    print('Edad: $edad');
    print('DNI: $dni');
  }

  bool esMayorDeEdad() {
    return edad >= 18;
  }
}

void main() {
  Persona persona = Persona(nombre: 'Juan', edad: 25, dni: '12345678A');

  persona.mostrar();

  if (persona.esMayorDeEdad()) {
    print('${persona.getNombre()} es mayor de edad.');
  } else {
    print('${persona.getNombre()} no es mayor de edad.');
  }
}
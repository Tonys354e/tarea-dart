class Persona {
  String nombre;
  int edad;
  String dni;

  Persona({required this.nombre, required this.edad, required this.dni});
}

class Cuenta {
  Persona titular;
  double cantidad;

  Cuenta({required this.titular, this.cantidad = 0.0});

  Persona getTitular() {
    return titular;
  }

  double getCantidad() {
    return cantidad;
  }

  void mostrar() {
    print('Titular: ${titular.nombre}');
    print('Edad: ${titular.edad}');
    print('DNI: ${titular.dni}');
    print('Cantidad en la cuenta: $cantidad');
  }

  void ingresar(double cantidad) {
    if (cantidad > 0) {
      this.cantidad += cantidad;
      print('Se ha ingresado $cantidad a la cuenta.');
    } else {
      print('No se puede ingresar una cantidad negativa.');
    }
  }

  void retirar(double cantidad) {
    this.cantidad -= cantidad;
    print('Se ha retirado $cantidad de la cuenta.');
  }
}

void main() {
  Persona titular = Persona(nombre: 'Maria', edad: 30, dni: '87654321B');
  Cuenta cuenta = Cuenta(titular: titular, cantidad: 1000.0);

  cuenta.mostrar();

  cuenta.ingresar(500.0);
  cuenta.mostrar();

  cuenta.retirar(200.0);
  cuenta.mostrar();
}
class Persona {
  String nombre;
  int edad;
  String dni;

  Persona({required this.nombre, required this.edad, required this.dni});

  bool esMayorDeEdad() {
    return edad >= 18;
  }
}

class Cuenta {
  Persona titular;
  double cantidad;

  Cuenta({required this.titular, this.cantidad = 0.0});

  void ingresar(double cantidad) {
    this.cantidad += cantidad;
    print('Se han ingresado $cantidad a la cuenta de ${titular.nombre}. Saldo actual: $this.cantidad');
  }

  void retirar(double cantidad) {
    if (this.cantidad >= cantidad) {
      this.cantidad -= cantidad;
      print('Se han retirado $cantidad de la cuenta de ${titular.nombre}. Saldo actual: $this.cantidad');
    } else {
      print('No se puede retirar la cantidad solicitada. Saldo insuficiente.');
    }
  }

  void mostrar() {
    print('Titular: ${titular.nombre}');
    print('Saldo: $cantidad');
  }
}

class CuentaJoven extends Cuenta {
  double bonificacion;

  CuentaJoven({required Persona titular, double cantidad = 0.0, this.bonificacion = 0.0})
      : super(titular: titular, cantidad: cantidad);

  bool esTitularValido() {
    return titular.esMayorDeEdad() && titular.edad < 25;
  }

  @override
  void retirar(double cantidad) {
    if (esTitularValido()) {
      super.retirar(cantidad);
    } else {
      print('El titular no es válido para realizar la operación de retirada.');
    }
  }

  @override
  void mostrar() {
    print('Cuenta Joven:');
    super.mostrar();
    print('Bonificación: $bonificacion%');
  }
}

void main() {
  Persona titular = Persona(nombre: 'Elena', edad: 22, dni: '98765432C');
  CuentaJoven cuentaJoven = CuentaJoven(titular: titular, cantidad: 500.0, bonificacion: 5.0);

  cuentaJoven.mostrar();

  cuentaJoven.ingresar(200.0);
  cuentaJoven.mostrar();

  cuentaJoven.retirar(100.0);
  cuentaJoven.mostrar();
}
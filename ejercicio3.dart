class Cuenta {
  String _nombre;
  String _dni;
  double _cantidad;

  Cuenta(this._nombre, this._dni, this._cantidad);


  String get nombre => _nombre;
  String get dni => _dni;
  double get cantidad => _cantidad;


  set nombre(String nombre) => _nombre = nombre;
  set dni(String dni) => _dni = dni;
  set cantidad(double cantidad) => _cantidad = cantidad;

  void ingreso(double cantidad) {
    if (cantidad > 0) {
      _cantidad += cantidad;
      print('Se ha ingresado $cantidad a la cuenta de $nombre. Nuevo saldo: $_cantidad');
    } else {
      print('La cantidad ingresada debe ser mayor que 0.');
    }
  }

  void reintegro(double cantidad) {
    if (cantidad > 0) {
      _cantidad -= cantidad;
      print('Se ha realizado un reintegro de $cantidad en la cuenta de $nombre. Nuevo saldo: $_cantidad');
    } else {
      print('La cantidad a reintegrar debe ser mayor que 0.');
    }
  }

  void transferencia(double cantidad, Cuenta otraCuenta) {
    if (cantidad > 0 && _cantidad >= cantidad) {
      _cantidad -= cantidad;
      otraCuenta.ingreso(cantidad);
      print('Se ha transferido $cantidad a la cuenta de ${otraCuenta.nombre} desde la cuenta de $nombre.');
    } else {
      print('No se puede realizar la transferencia. Verifica los montos y saldos disponibles.');
    }
  }
}

void main() {
  Cuenta miCuenta = Cuenta('Juan Perez', '123456789', 100.0);
  Cuenta otraCuenta = Cuenta('Maria Lopez', '987654321', 50.0);

  print('Titular de la cuenta: ${miCuenta.nombre}');
  print('Saldo inicial: ${miCuenta.cantidad}');

  miCuenta.ingreso(50.0);
  miCuenta.reintegro(30.0);
  
  print('Saldo de la cuenta de ${otraCuenta.nombre}: ${otraCuenta.cantidad}');
  miCuenta.transferencia(20.0, otraCuenta);
}
class Cuenta {
  String titular;
  double cantidad;

  Cuenta(this.titular, [this.cantidad = 0]);

  void ingresar(double cantidad) {
    if (cantidad > 0) {
      this.cantidad += cantidad;
      print('Se ha ingresado $cantidad a la cuenta. Nuevo saldo: ${this.cantidad}');
    } else {
      print('La cantidad ingresada debe ser mayor que 0.');
    }
  }

  void retirar(double cantidad) {
    double nuevoSaldo = this.cantidad - cantidad;
    if (nuevoSaldo < 0) {
      this.cantidad = 0;
      print('No se puede retirar esa cantidad. Saldo actual: ${this.cantidad}');
    } else {
      this.cantidad = nuevoSaldo;
      print('Se ha retirado $cantidad de la cuenta. Nuevo saldo: ${this.cantidad}');
    }
  }
}

void main() {
  Cuenta miCuenta = Cuenta('Juan Perez', 100.0);
  
  print('Titular de la cuenta: ${miCuenta.titular}');
  print('Saldo inicial: ${miCuenta.cantidad}');
  
  miCuenta.ingresar(50.0);
  miCuenta.retirar(30.0);
  miCuenta.retirar(150.0);
}
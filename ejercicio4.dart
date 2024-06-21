class Contador {
  int contador;

  Contador() : contador = 0;

  Contador.conParametros(this.contador);

  int getContador() {
    return contador;
  }

  void setContador(int valor) {
    contador = valor;
  }

  void incrementar() {
    contador++;
  }

  void decrementar() {
    contador--;
  }
}

void main() {
  Contador miContador = Contador();
  print('Contador actual: ${miContador.contador}');

  miContador.incrementar();
  print('Contador incrementado: ${miContador.contador}');

  miContador.decrementar();
  print('Contador decrementado: ${miContador.contador}');

  Contador otroContador = Contador.conParametros(10);
  print('Otro contador: ${otroContador.contador}');
}
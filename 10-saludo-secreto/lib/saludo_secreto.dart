class SecretHandshake {
  List<String> commands(int input) {
    var binario = input.toRadixString(2); 
    List<String> resultado = []; 
    for (var i = 0; i < binario.length; i++) {
      var temporal = binario.substring(i);
      if (temporal.length > 1) {
        if (temporal.startsWith('1')) {
          temporal = temporal.replaceRange(1, temporal.length, '0' * (temporal.length - 1));
        }
      }
      if (temporal == '1') {
        resultado.add('wink');
      } else if (temporal == '10') {
        resultado.add('double blink');
      } else if (temporal == '100') {
        resultado.add('close your eyes');
      } else if (temporal == '1000') {
        resultado.add('jump');
      }
    }
    if (binario.length >= 5) { 
      return resultado;
    } else
      return resultado.reversed.toList();
  }
}

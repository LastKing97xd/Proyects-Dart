void main() {
  print('Inicio');

  httpGet('https://davidhidalgo.com').then((value) {
    print(value);
  }).catchError((err) {
    print('Error: $err');
  });
  print('Fin');
}

Future<String> httpGet(String url) {
  return Future.delayed(const Duration(seconds: 3), () {
    throw 'Error en la peticion http';

    //return 'Respuesta del http';
  });
}

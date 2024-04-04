void main() async {
  print('Inicio');

  try{
    
    final value = await httpGet('https://davidhidalgo.com');
    print (value);
    
  }catch(err){
    print ('Tenemos un error: $err');
  }
  
  /*httpGet('https://davidhidalgo.com').then((value) {
    print(value);
  }).catchError((err) {
    print('Error: $err');
  });*/
  
  print('Fin');
}

Future<String> httpGet(String url) async {
  
  await Future.delayed(const Duration(seconds: 3));
  
  throw 'Error en la peticion';
  return 'Tenemos un valor de la peticion';
  //return Future.delayed(const Duration(seconds: 3), () {
    //throw 'Error en la peticion http';

    //return 'Respuesta del http';
  //});
}

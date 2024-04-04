void main() async {
  print('Inicio');

  try{
    
    final value = await httpGet('https://davidhidalgo.com');
    print ('Exito $value');
    
  } on Exception catch (err){
    print('Tenemos una Excepcion: $err');
    
  }catch(err){
    print ('Algo terrible paso: $err');
    //no importa lo de arriba, siempre has esto => finally
  } finally {
    print ('Fin del try catch');
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
  
  throw Exception('No hay parametros en el URL');
  //throw 'Error en la peticion';
  return 'Tenemos un valor de la peticion';
  //return Future.delayed(const Duration(seconds: 3), () {
    //throw 'Error en la peticion http';

    //return 'Respuesta del http';
  //});
}

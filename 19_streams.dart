void main(){
  
  emitirNumeros().listen( (value){
    print('Stream Value: $value');
  });

}

//Flujo de datos a traves del tiempo
Stream<int> emitirNumeros(){
  
  return Stream.periodic(const Duration(seconds: 2), (value){
    //print('Desde periodic $value');
    return value;
  }).take(5);
}
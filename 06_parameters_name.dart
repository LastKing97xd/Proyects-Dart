void main(){
  
  print (saludoTodos());
  
  print ('Suma ${dosNumeros(10,90)}');
  
  print ('Suma ${dosNumerosOpcional(10)}');
  
  print (persona(name: 'Ares',message: 'Hi'));
  
}

/*String saludoTodos(){
  return 'Hola a todos';
}*/

String saludoTodos() => 'Hola a todos';

/*int dosNumeros(int a,int b){
  return a + b;
}*/

int dosNumeros (int a,int b) => a + b;

int dosNumerosOpcional (int a,[int b = 10]){

  //b = b ?? 0;
  //b ??= 0;
  
  return a + b;
}

String persona({required String name,String message='Hola'}){
  return '$message, $name';
}

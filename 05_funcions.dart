void main(){
  
  print (saludoTodos());
  
  print ('Suma ${dosNumeros(10,90)}');
  
}

/*String saludoTodos(){
  return 'Hola a todos';
}*/

String saludoTodos() => 'Hola a todos';

/*int dosNumeros(int a,int b){
  return a + b;
}*/

int dosNumeros (int a,int b) => a + b;

int dosNumerosOpcional (int a,[int b = 0]){

  
  //b = b ?? 0;
  //b ??= 0;
  
  return a + b;
}
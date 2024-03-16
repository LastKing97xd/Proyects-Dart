void main (){
  
  final String pokemon = 'Ares';
  final int hp = 100;
  final bool isAlive = true;
  final List<String> abilities = ['impostor'];
  final sprites = <String> ['Ares.png','Dakota.png'];
  
  //dynamic == null puede ser cualquier variable
  dynamic message = 'Hola';
  message = false;
  message = [1,2,3,4,5];
  message = {1,2,3,4,5};
  message = ()=> true;
  message = null;
  
  //message +=1; 
  
  print("""
  $pokemon
  $hp
  $isAlive
  $abilities
  $sprites
  $message
  """);
  
}
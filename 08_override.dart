void main(){
  
  final wolverine =new Hero(name: 'Logan');
  
  //print llama por defecto a toString osea convertir a String
  print(wolverine);
  //print(wolverine.toString);
  print(wolverine.name);
  print(wolverine.power);
}

class Hero {
  
  String name;
  String power;
  
  Hero ({
    required this.name,
    this.power = 'Sin poder'
    });
  /*Hero(String pName, String pPower)
    : name=pName,
      power = pPower;*/
  
  @override
  String toString(){
    //return 'Del toString';
    return '$name - $power';
  }

}
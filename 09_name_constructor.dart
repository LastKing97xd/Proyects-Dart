void main (){
  
  final Map<String,dynamic> mapExt = {
    'name': 'Ares',
    'power':'Morder',
    'isAlive':true
  };
  
  final ironman = Hero.fromMap(mapExt);
  
  /*final ironman = new Hero(
    isAlive:mapExt['isAlive'] ?? false,
    power: 'Money',
    name: 'Tony Stark'
  );*/
  
  /*final ironman = new Hero(
    isAlive: false,
    power: 'Money',
    name: 'Tony Stark'
  );*/
  
  print(ironman);
}

class Hero{
  
  String name;
  String power;
  bool isAlive;
  
  Hero(
    {
      required this.name,
      required this.power,
      required this.isAlive
    });
  
  Hero.fromMap(Map<String,dynamic> json)
    : name = json['name'] ?? 'Sin nombre',
      power = json['power'] ?? 'Sin poder',
      isAlive = json['isAlive'] ?? 'Sin datos';
  
  @override
  String toString(){
    return '$name, $power, isAlive: ${isAlive ? 'Yes!':'Nope'}';
  }
}
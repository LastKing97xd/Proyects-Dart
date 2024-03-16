void main (){
  
  final cal = Calcular(side: 10);
  
  cal.setArea= -1;
  
  //print('Area ${cal.calcularArea()}');
  
  print('Area ${cal.getArea}');
}

class Calcular{
  
  double _side;
  
  Calcular({required double side})
    : _side = side;
  
  double get getArea{
    return _side* _side;
  }
  
  set setArea(double value){
    print('Nuevo valor $value');
    if (value < 0) throw 'El valor es menor a 0';
    
    _side = value;
  }
  
  double calcularArea(){
    return _side * _side;
  }
}
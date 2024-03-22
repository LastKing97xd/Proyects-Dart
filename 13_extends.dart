void main(){
  
  //final planta = Energia(); Nose puede instanciar clase Abstract
  final planta = AirePlanta(inicialEnergia: 110);
  //Es como el cascaron
  print ('Resultado: ${cargaTelefono(planta)}');
}

double cargaTelefono (PlantaEnergia cualquierPlanta){
  if(cualquierPlanta.energiaRestante <10){
    throw Exception('No tiene energia suficiente');
    
  }
  
  return cualquierPlanta.energiaRestante - 10;
}


enum TipoPlanta{ nuclear, aire, agua }

abstract class PlantaEnergia{
  
  double energiaRestante;
  TipoPlanta tipo;
  
  PlantaEnergia({required this.energiaRestante, required this.tipo});
  
  void consumoEnergia( double monto );
  
}

//extends o implements
class AirePlanta extends PlantaEnergia{
  
  AirePlanta({required double inicialEnergia})
    : super(energiaRestante: inicialEnergia,tipo: TipoPlanta.aire);
  
  @override
  void consumoEnergia(double monto){
    //energiaRestante -= monto;
    //
  }
  
}
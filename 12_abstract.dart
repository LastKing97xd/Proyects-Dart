void main(){
  
  //final planta = Energia();
  //Es como el cascaron
}

enum TipoPlanta{ nuclear, aire, agua }



abstract class Energia{
  
  double energiaRestante;
  TipoPlanta tipo;
  
  Energia({required this.energiaRestante, required this.tipo});
  
  void consumoEnergia( double monto );
  
}
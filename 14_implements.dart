void main() {
  //final planta = Energia(); Nose puede instanciar clase Abstract
  final planta = AirePlanta(inicialEnergia: 110);

  final planta2 = NuclearPlanta(energiaRestante: 1000);

  //Es como el cascaron
  print('Resultado: ${cargaTelefono(planta)}');

  print('Resultado2: ${cargaTelefono(planta2)}');
}

double cargaTelefono(PlantaEnergia cualquierPlanta) {
  if (cualquierPlanta.energiaRestante < 10) {
    throw Exception('No tiene energia suficiente');
  }

  return cualquierPlanta.energiaRestante - 10;
}

enum TipoPlanta { nuclear, aire, agua }

abstract class PlantaEnergia {
  double energiaRestante;
  final TipoPlanta tipo;

  PlantaEnergia({required this.energiaRestante, required this.tipo});

  void consumoEnergia(double monto);
}

//extends o implements

//el Extends tiene que tener todos los metodos de la clase abstracta
class AirePlanta extends PlantaEnergia {
  AirePlanta({required double inicialEnergia})
      : super(energiaRestante: inicialEnergia, tipo: TipoPlanta.aire);

  @override
  void consumoEnergia(double monto) {
    //energiaRestante -= monto;
    //
  }
}

//el Implements puede decidir que metodos utilizar
class NuclearPlanta implements PlantaEnergia {
  @override
  double energiaRestante;

  @override
  final TipoPlanta tipo = TipoPlanta.nuclear;

  NuclearPlanta({required this.energiaRestante});

  @override
  void consumoEnergia(double monto) {
    //energiaRestante -= (monto * 0.5);
  }
}

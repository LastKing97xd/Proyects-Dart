abstract class Animal {
  
}

abstract class Mamifero extends Animal {
  
}

abstract class Ave extends Animal {
  
}

abstract class Pez extends Animal {
  
}

mixin class Volador {
  void volar () => print('Estoy Volando');
}

mixin class Caminar {
  void caminar () => print('Estoy Caminando');
}

mixin class Nadador {
  void nadar () => print('Estoy Nadando');
}

class Delfin extends Mamifero with Nadador{}

class Murcielago extends Mamifero with Volador, Caminar{}

class Gato extends Mamifero with Caminar{}

class Paloma extends Ave with Volador,Caminar{}

class Pato extends Ave with Volador,Caminar,Nadador{}

class Tiburon extends Mamifero with Nadador{}

class PezVolador extends Mamifero with Nadador,Volador{}
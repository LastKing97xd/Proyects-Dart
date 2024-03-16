void main () {
  final Map<String, dynamic> pokemon = {
    'name': 'Ares',
    'hp': 100,
    'isAlive': true,
    'abilities': <String>['impostor'],
    'sprites':{
      1:'Ares/front.png',
      2:'Dakota/back.png'
    }
  };
  
  /*final pokemons = {
    1: 'Ares',
    2: '100',
    3: '123',
    4: 'XYZ'
  };*/
  
  print(pokemon);
  print('Name:  ${pokemon['name']}');
  print('Sprites:  ${pokemon['sprites']}');
  
  print('Back:  ${pokemon['sprites'][2]}');
  print('Front:  ${pokemon['sprites'][1]}');
}
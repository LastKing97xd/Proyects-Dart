void main(){
  
  final numbers = [1,2,3,4,5,5,5,6,7,8,9,9,10];
  
  print('List original: $numbers');
  print('Length: ${ numbers.length }');
  print('Index 0: ${numbers[0]}');
  print('First: ${numbers.first}');
  print('Reversed: ${numbers.reversed}');
  
  final reversedNumbers = numbers.reversed;
  print('Iterable: $reversedNumbers');
  print('List: ${reversedNumbers.toList()}');
  print('Set: ${reversedNumbers.toSet()}');
  
  final numbersMayor5 = numbers.where( (int num) {
    return num > 5;
  });
  
  //Set no deja que se repitan los datos
  
  print('Mayor5 Iterable: $numbersMayor5');
  print('Mayor5 Set: ${numbersMayor5.toSet()}');
}

void main(){
  
  emitirNumeros().listen((value){
    print('Stream value: $value');
  });
  
}

Stream<int> emitirNumeros() async*{
  
  final valuesEmitir = [1,2,3,4,5];
  
  for(int i in valuesEmitir){
    await Future.delayed(const Duration(seconds: 1));
    yield i;
  }
}
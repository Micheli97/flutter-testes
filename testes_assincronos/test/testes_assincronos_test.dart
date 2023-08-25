import 'package:testes_assincronos/future.dart';
import 'package:test/test.dart';

void main() {

  test("Deve completar a requisição trazendo uma lista de nomes", (){
    final future = getFutureList();

    // Para verificar se a função async foi completada
    expect(future , completes);

    // Testar o tipo de retorno da função
    expect(future , completion(isA<List<String>>()));

    // Testa os dados retornados pela funçao
    expect(future , completion(equals(["masterclass", "flutterando"])));

  });
 
}

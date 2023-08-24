import 'package:api_testes/api_testes.dart';
import 'package:test/test.dart';

// Switch de testes é tudo que está dentro da função main 
// group -> é possível executar somente os testes dentro do grupo.
// Apenas uma questão de organização
void main() {
  test("Deve efetuar o calculo IMC", (){
    // Triple A pattern

    // arrange -> Prreparação para executar os testes (Ex: criação de variáveis)
    final peso = 64.0;
    final altura = 1.78;

    // act -> Executando os testes
    final result = calcIMC(altura, peso);

    // assert -> Resultado esperado após Act (Ação)
    expect(result, equals(20.199469763918696));
    expect(result, isA<double>());
    expect(result, greaterThan(20));
    expect(result, isPositive);
    expect(result.toString(), matches(RegExp(r'\d')));

  });


 group("Excessões de parametros | ", (){
   test("Deve lançar uma excessão se altura for menor que 1", (){
    expect(() => calcIMC(0, 64), throwsA(isA<Exception>()));
  });

    test("Deve lançar uma excessão se o peso for menor que 1", (){
    expect(() => calcIMC(1.78, 0), throwsA(isA<Exception>()));
  });
 });
}

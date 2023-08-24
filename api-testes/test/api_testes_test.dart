import 'package:api_testes/api_testes.dart';
import 'package:test/test.dart';

void main() {
  test("Deve efetuar o calculo IMC", (){
    final result = calcIMC(1.78, 64);
    expect(result, equals(20.199469763918696));

  });


  test("Deve lançar uma excessão se altura for menor que 1", (){
    expect(() => calcIMC(0, 64), throwsA(isA<Exception>()));
  });

    test("Deve lançar uma excessão se o peso for menor que 1", (){
    expect(() => calcIMC(1.78, 0), throwsA(isA<Exception>()));
  });
}

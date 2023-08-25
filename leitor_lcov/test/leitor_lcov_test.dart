import 'package:leitor_lcov/leitor_lcov.dart';
import 'package:test/test.dart';

void main() {
  test("Deve pegar porcentagem de cobertura", (){
    final result = covarage('./coverage/lcov.info');
    expect(result,"100%");
  });
}

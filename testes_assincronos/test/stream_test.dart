import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';
import 'package:testes_assincronos/stream.dart';

void main(){

  test("Deve completar a requisição trazendo uma lista de nomes", (){
    final stream = getStreamList();

    expect(stream, emitsInOrder(["masterclass", "flutterando"]));

  });

}
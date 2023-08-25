import 'package:leitor_lcov/leitor_lcov.dart';
import 'package:leitor_lcov/line_report.dart';
import 'package:test/test.dart';

void main() {
  test("Deve pegar porcentagem de cobertura", () {
    final result = covarage('./coverage/lcov.info');
    expect(result, "0%");
  });

  test("Deve calcular a porcentagem em 50%", () {
    final result = calculatePercent([
      LineReport(lineFound: 18, lineHit: 9, sourceile: ""),
      LineReport(lineFound: 10, lineHit: 5, sourceile: ""),
    ]);
    expect(result, 50);
  });
}

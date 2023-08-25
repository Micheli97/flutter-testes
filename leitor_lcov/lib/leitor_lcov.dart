import 'dart:io';

import 'package:leitor_lcov/line_report.dart';

void main() {
  final result = covarage('./coverage/lcov.info');
  print(result);
}

String covarage(String lcovPath) {
  final file = File(lcovPath);
  final content = file.readAsLinesSync();
  final reports = contentToLineReports(content);
  final percent = calculatePercent(reports);
  return "$percent%";
}

int calculatePercent(List<LineReport> reports) {
  int totalLF = 0;
  int totalLH = 0;

  for (var report in reports) {
    totalLF += report.lineFound;
    totalLH += report.lineHit;
  }

  final percent = (totalLH / totalLF) * 100;
  return percent.round();
}

List<LineReport> contentToLineReports(List<String> content) {
  final reports = <LineReport>[];

  var sf = "";
  var lf = 0;
  var lh = 0;

  for (var text in content) {
    if (text == "end_of_record") {
      final report = LineReport(lineFound: lf, lineHit: lh, sourceile: sf);
      reports.add(report);
      continue;
    }

    final line = text.split(":");

    if (line[0] == "SF") {
      sf = line[1];
    } else if (line[0] == "LF") {
      lf = int.parse(line[1]);
    } else if (line[0] == "LH") {
      lf = int.parse(line[1]);
    }
  }

  return reports;
}

// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:teste_widget/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp()); // infla o widget a ser testado

    expect(find.byKey(const Key("CounterValue")), findsOneWidget);

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);
    expect(find.text('2'), findsNothing);

    await tester.tap(find.byIcon(Icons.add));
    // await tester.pump(const Duration(seconds: 10)); // Utilizado quando o widget depende de algo no futuro. Vai pular 10s no frame. Vai para 10s no futuro
    // await tester.pump(); // Necessário para atualizar o estado mesmo que ele já tenha sido alterdo em memoria

    await tester.pumpAndSettle();

  

    // // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);

    // await tester.tap(find.byIcon(Icons.add));
    //  await tester.pump(const Duration(seconds: 10));
    // await tester.pump();

    // expect(find.text('0'), findsNothing);
    // expect(find.text('1'), findsNothing);
    // expect(find.text("2"), findsOneWidget);
  });
}

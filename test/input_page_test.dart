import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:launcher_practice/input_model.dart';
import 'package:launcher_practice/input_page.dart';
import 'package:provider/provider.dart';

const String myEmail = 'chooyan.engineer@gmail.com';

main() {
  Widget inputPage;
  InputModel model;
  setUp(() {
    model = InputModel();
    inputPage = ChangeNotifierProvider(
      create: (context) => model,
      child: InputPage(),
    );
  });

  group('tests for screen', () {
    testWidgets('one InputPage widget should be found event after tapping link', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: inputPage));

      expect(find.byType(InputPage), findsOneWidget);

      await tester.tap(find.text('Open example webpage'));
      await tester.pumpAndSettle();

      expect(find.byType(InputPage), findsOneWidget);
    });
  });

  group('tests for TextField', () {
    testWidgets('model.email should have the same value as input', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: inputPage));

      await tester.enterText(find.byType(TextField), myEmail);

      expect(model.email, myEmail);
    });

    testWidgets('model.email should have empty value after tapping delete button', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: inputPage));

      await tester.enterText(find.byType(TextField), myEmail);
      expect(model.email, myEmail);

      await tester.tap(find.byType(Icon));
      expect(model.email, '');
    });
  });
}
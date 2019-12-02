import 'package:flutter_test/flutter_test.dart';
import 'package:launcher_practice/input_model.dart';

const String myEmail = 'chooyan.engineer@gmail.com';

main() {

  InputModel model;
  setUp(() {
    model = InputModel();
  });

  group('tests for fields', () {
    test('controller.text should be my email after setting my email to emial field', () {
      model.email = myEmail;
      expect(model.controller.text, myEmail);
    });
  });
  
  group('tests for functions', () {
    test('model.email should be empty after calling deleteEmail() function', () {
      model.email = myEmail;
      expect(model.email, myEmail);

      model.deleteEmail();
      expect(model.email, '');
    });
  });
}
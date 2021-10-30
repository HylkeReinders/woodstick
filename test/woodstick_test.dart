// ignore_for_file: prefer_const_constructors
import 'package:test/test.dart';
import 'package:woodstick/src/template.dart';
import 'package:woodstick/woodstick.dart';

class _User {
  _User({
    this.name = 'John Doe',
    this.email = 'test@123.nl',
    this.isActive = true,
  });

  final String name;

  final String email;

  final bool isActive;
}

void main() {
  group('Woodstick Main Tests', () {
    test('can be instantiated', () {
      expect(Woodstick(), isNotNull);
    });
  });

  group('Woodstick Template Tests', () {
    final user = _User();

    test('renders the name of the user instead of the template.', () {
      final template = Template(
        template: 'Hello {% @user.name %}',
      )..setString('user.name', user.name);

      expect(template.render(), 'Hello John Doe');
    });

    test('renders the variable becasue no var is set.', () {
      final template = Template(
        template: 'Hello {% @user.name %}',
      );

      expect(template.render(), 'Hello {% @user.name %}');
    });
  });
}

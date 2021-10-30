import 'package:woodstick/src/template.dart';

void main() {
  const example = 'Welcome back, {% @name %}';

  final template = Template(template:example)..setString('name', 'John');

  print(template.render());
}

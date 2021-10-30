import 'package:woodstick/src/template_variable.dart';

/// The base of the template.
class Template {
  /// The base of the template.
  Template({required this.template});

  /// String for the Template.
  final String template;

  /// All of the variables in the template.
  final List<TemplateVariable> _escapes = [];

  /// Sets a variable to be escaped. In the render function.
  void setString(String variable, String value) {
    _escapes.add(TemplateVariable(variable, value));
  }

  /// Renders the template. All of the set variables will be escaped.
  String render() {
    var result = template;

    for (final escape in _escapes) {
      result = result.replaceAll('{% @${escape.variable} %}', escape.value);
    }

    return result;
  }
}

/// A Model for a single variable in the template.
class TemplateVariable {
  /// A Model for a single variable in the template.
  TemplateVariable(this.variable, this.value);

  /// Variable name. For example, "name" in "{% @name %}".
  final String variable;

  /// Variable value. For example, "John" in "{% @name %}".
  final String value;
}

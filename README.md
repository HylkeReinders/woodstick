# Woodstick Template Engine

Twig like templating engine.

Example:
```
  String example = 'Welcome back, {% @name %}';

  var instance = Template();

  instance.setString('name', 'Hylke');

  // Welcome back, Hylke
  print('example');
```
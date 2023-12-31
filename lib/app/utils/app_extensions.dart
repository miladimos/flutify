import 'package:flutter/material.dart';

extension RouterExtension on BuildContext {
  toNamed(String name, {Object? args}) {
    return Navigator.of(this).pushNamed(name, arguments: args);
  }

  pop() {
    return Navigator.of(this).pop();
  }
}

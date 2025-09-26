import 'package:flutter/material.dart';

class FocusNodes<T extends Enum> {
  final Map<T, FocusNode> _focusNodes = {};

  FocusNode get(T key) {
    return _focusNodes.putIfAbsent(key, () {
      return FocusNode();
    });
  }

  void requestFocus(T key) {
    return get(key).requestFocus();
  }

  void dispose() {
    for (final focusNode in _focusNodes.values) {
      focusNode.dispose();
    }
  }
}

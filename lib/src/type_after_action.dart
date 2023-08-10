import 'dart:async';

import 'package:flutter/material.dart';

class TypingAfterAction {
  int? milliseconds = 500;
  VoidCallback? action;
  Timer? _timer;

  TypingAfterAction({this.milliseconds});

  run(VoidCallback action) {
    if (null != _timer) {
      _timer!.cancel();
    }
    _timer = Timer(Duration(milliseconds: milliseconds!), action);
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final startupViewmodelProvider =
    ChangeNotifierProvider((_) => StartupViewModel());

class StartupViewModel extends ChangeNotifier {
  
  final String _startupText = 'HNG9';

  String get startupText => _startupText;

  int _counter = 0;
  int get counter => _counter;

  int incrementCounter() {
    _counter++;
    notifyListeners();
    return _counter;
  }
}

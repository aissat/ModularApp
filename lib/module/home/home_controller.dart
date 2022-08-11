import 'dart:developer';

class HomeController {
  int _counter = 0;

  void onIncrement({int? val}) {
    ++_counter;
    // notifyListeners();
    log('$val =>  $_counter');
  }

  int get counter => _counter;
}

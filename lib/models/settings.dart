import "package:flutter/material.dart";

class Settings extends ChangeNotifier {
  String _name = 'nenhum';
  int _age = 0;

  set name(String newName) {
    _name = newName;
    notifyListeners();
  }

  String get name {
    return _name;
  }

  set age(int newAge) {
    _age = newAge;
    notifyListeners();
  }

  int get age {
    return _age;
  }
}

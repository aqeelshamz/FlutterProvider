import 'package:flutter/cupertino.dart';

class TestProvider extends ChangeNotifier{
  String value = "This is a value";

  void changeValue(String val){
    value = val;
    notifyListeners();
  }
}
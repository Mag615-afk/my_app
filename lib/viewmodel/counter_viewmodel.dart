import 'package:flutter/material.dart';
import '../model/counter_model.dart';
class CounterViewModel extends ChangeNotifier {
  final CounterModel model= CounterModel(0);
  int get count => model.count;
  void incremented(){
    model.count++;
    notifyListeners();
  }
  void decremented(){
    model.count--;
    notifyListeners();
  }
  void reset(){
  model.count = 0;
  notifyListeners();
}
}

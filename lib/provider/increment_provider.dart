import 'package:flutter/foundation.dart';

class Counter with ChangeNotifier{
  var _count=0;
  int get getCounter{
    return _count;
  }
  void incrementCounter(){
    _count=_count+1;
    notifyListeners();
  }
}
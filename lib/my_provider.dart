import 'package:flutter/material.dart';

class MyProvider with ChangeNotifier{
   // يتم خزن الحالة فيه
  // To save the state inside it
  int counter =0;

  void increment(){
    counter++;
    notifyListeners();
  }

}

import 'package:flutter/material.dart';

class Cartprovider extends ChangeNotifier
{
  DateTime dateTime = DateTime(2023, 19, 3, 10, 10);

  void changedate(DateTime newDate)
  {
    dateTime = newDate;
    notifyListeners();
  }
}
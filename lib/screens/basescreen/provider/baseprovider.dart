
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class Baseprovider extends ChangeNotifier
{
  int i = 0;
  void changeIndex(int x)
  {
    i++;
  }
}


import 'package:flutter/cupertino.dart';
import 'package:ios_ecommerce_store/screens/filterscreen/view/filterscreen.dart';
import 'package:ios_ecommerce_store/screens/homescreen/view/homescreen.dart';

class Homeprovider extends ChangeNotifier
{

  List imgPath = [
    "assets/images/1.jpg",
    "assets/images/2.jpg",
    "assets/images/3.jpg",
    "assets/images/5.jpg",
    "assets/images/6.jpg",
    "assets/images/7.jpg",
    "assets/images/8.jpg",
    "assets/images/9.jpg",
    "assets/images/10.jpg",
  ];

  List? screenList = [
    Homescreen(),
    Filterscreen(),
    Homescreen(),
  ];

  Duration time = Duration();

  void timePick()
  {

  }

  



}
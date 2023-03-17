
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ios_ecommerce_store/screens/basescreen/view/basescreen.dart';
import 'package:ios_ecommerce_store/screens/cartscreen/provider/cartprovider.dart';
import 'package:ios_ecommerce_store/screens/cartscreen/view/cartscreen.dart';
import 'package:ios_ecommerce_store/screens/filterscreen/view/filterscreen.dart';
import 'package:ios_ecommerce_store/screens/homescreen/provider/homeprovider.dart';
import 'package:ios_ecommerce_store/screens/homescreen/view/homescreen.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Homeprovider(),),
        ChangeNotifierProvider(create: (context) => Cartprovider(),),
      ],
      child: CupertinoApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/' : (p0) => Basescreen(),
        },
      ),
    ),
  );
}
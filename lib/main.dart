
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ios_ecommerce_store/screens/homescreen/provider/homeprovider.dart';
import 'package:ios_ecommerce_store/screens/homescreen/view/homescreen.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Homeprovider(),),
      ],
      child: CupertinoApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/' : (p0) => Homescreen(),
        },
      ),
    ),
  );
}
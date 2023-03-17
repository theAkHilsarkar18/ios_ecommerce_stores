import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ios_ecommerce_store/screens/cartscreen/view/cartscreen.dart';
import 'package:ios_ecommerce_store/screens/filterscreen/view/filterscreen.dart';
import 'package:ios_ecommerce_store/screens/homescreen/view/homescreen.dart';

class Basescreen extends StatefulWidget {
  const Basescreen({Key? key}) : super(key: key);

  @override
  State<Basescreen> createState() => _BasescreenState();
}

class _BasescreenState extends State<Basescreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CupertinoTabScaffold(
       controller: CupertinoTabController(
         initialIndex: 0,
       ),
        tabBuilder: (context, index) => CupertinoTabView(
          builder: (context) {
            return Center(
              child: Homescreen(),
            );
          },
        ),
        tabBar: CupertinoTabBar(
          backgroundColor: Colors.white,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined)),
            BottomNavigationBarItem(icon: Icon(Icons.search)),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined)),
          ],
        ),
      ),
    );
  }
}

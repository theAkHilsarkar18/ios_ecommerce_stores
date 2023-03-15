import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Basescreen extends StatefulWidget {
  const Basescreen({Key? key}) : super(key: key);

  @override
  State<Basescreen> createState() => _BasescreenState();
}

class _BasescreenState extends State<Basescreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CupertinoPageScaffold(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            CupertinoTabBar(
              backgroundColor: Colors.white,
              currentIndex: 0,
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home_outlined,color: Colors.grey.shade700),label: "Products"),
                BottomNavigationBarItem(icon: Icon(Icons.search,color: Colors.grey.shade700),label: "Search"),
                BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined,color: Colors.grey.shade700),label: "Cart"),
              ],
            ),
            SizedBox(height: 5,),
          ],
        ),
      ),
    );
  }
}

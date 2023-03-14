
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
    return SafeArea(child: Scaffold(),);
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ios_ecommerce_store/screens/homescreen/provider/homeprovider.dart';
import 'package:provider/provider.dart';

class Cartscreen extends StatefulWidget {
  const Cartscreen({Key? key}) : super(key: key);

  @override
  State<Cartscreen> createState() => _CartscreenState();
}

class _CartscreenState extends State<Cartscreen> {
  @override
  Widget build(BuildContext context) {
    Homeprovider homeprovider = Provider.of(context,listen: false);
    return SafeArea(
      child: CupertinoPageScaffold(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Shoping Cart",style: GoogleFonts.lato(color: Colors.black,letterSpacing: 1,fontSize: 25,fontWeight: FontWeight.w600),),
            ),
            CupertinoTextField(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey),
              ),
              prefix: Icon(Icons.person_outline,color: Colors.grey),

            ),
            SizedBox(height: 5,),
            CupertinoTextField(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey),
              ),
              prefix: Icon(Icons.email_outlined,color: Colors.grey),

            ),
            SizedBox(height: 5,),
            CupertinoTextField(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey),
              ),
              prefix: Icon(Icons.location_on_outlined,color: Colors.grey),

            ),
            SizedBox(height: 5,),
            CupertinoTextField(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey),
              ),
              prefix: Icon(Icons.watch,color: Colors.grey),

            ),
            SizedBox(height: 10,),
            CupertinoButton(child: Text("Pick Time"), onPressed: () {
              CupertinoTimerPicker(
                onTimerDurationChanged: (value) {

                },
              );
            },)
          ],
        ),
      ),
    );
  }
}

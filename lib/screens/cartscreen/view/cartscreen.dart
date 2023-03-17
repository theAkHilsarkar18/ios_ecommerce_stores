import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ios_ecommerce_store/screens/cartscreen/provider/cartprovider.dart';
import 'package:ios_ecommerce_store/screens/homescreen/provider/homeprovider.dart';
import 'package:provider/provider.dart';

class Cartscreen extends StatefulWidget {
  const Cartscreen({Key? key}) : super(key: key);

  @override
  State<Cartscreen> createState() => _CartscreenState();
}

class _CartscreenState extends State<Cartscreen> {

  Cartprovider? cartprovider;
  Homeprovider? homeprovider;
  Cartprovider? cartproviderTrue;
  @override
  Widget build(BuildContext context) {
    cartprovider = Provider.of(context,listen: false);
    cartproviderTrue = Provider.of(context,listen: true);
    Homeprovider homeprovider = Provider.of(context, listen: false);
    return SafeArea(
      child: CupertinoPageScaffold(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Shoping Cart",
                style: GoogleFonts.lato(
                    color: Colors.black,
                    letterSpacing: 1,
                    fontSize: 25,
                    fontWeight: FontWeight.w600),
              ),
            ),
            CupertinoTextField(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey),
              ),
              prefix: Icon(Icons.person_outline, color: Colors.grey),
            ),
            SizedBox(
              height: 5,
            ),
            CupertinoTextField(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey),
              ),
              prefix: Icon(Icons.email_outlined, color: Colors.grey),
            ),
            SizedBox(
              height: 5,
            ),
            CupertinoTextField(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey),
              ),
              prefix: Icon(Icons.location_on_outlined, color: Colors.grey),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: CupertinoTextField.borderless(
                prefix: Icon(
                  CupertinoIcons.time,
                  color: Colors.black38,
                ),
                placeholder: "Delivery Time",
                suffix: Text(
                    " ${cartproviderTrue!.dateTime.day}-${cartproviderTrue!.dateTime.month}-${cartproviderTrue!.dateTime.year} ${cartproviderTrue!.dateTime.hour}:${cartproviderTrue!.dateTime.minute} "),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 200,
              child: CupertinoDatePicker(
                onDateTimeChanged: (value) {
                  cartprovider!.changedate(value);
                },
              ),
            ),

            SizedBox(height: 10,),
            productBox(homeprovider.imgPath[2]),
            productBox(homeprovider.imgPath[4]),
            productBox(homeprovider.imgPath[8]),
          ],
        ),
      ),
    );
  }



  Widget productBox(String path)
  {
    return Container(
      margin: EdgeInsets.all(5),
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      alignment: Alignment.center,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.all(5),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset("${path}",fit: BoxFit.cover),
          ),
          SizedBox(width: 5,),
          Expanded(
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  border: Border(top: BorderSide(color: Colors.grey.shade300,width: 1),)
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text("Vagabond Sack",style: GoogleFonts.lato(fontSize: 15,letterSpacing: 1),),
                        SizedBox(height: 3,),
                        Text("\$ 120",style: GoogleFonts.lato(fontSize: 12,letterSpacing: 1,color: Colors.grey),),
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("\$ 120",style: GoogleFonts.lato(fontSize: 12,letterSpacing: 1,color: Colors.grey),),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }


}

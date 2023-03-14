import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ios_ecommerce_store/screens/homescreen/provider/homeprovider.dart';
import 'package:provider/provider.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

Homeprovider? homeprovider;
Homeprovider? homeproviderTrue;

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {

    homeprovider = Provider.of(context,listen: false);
    homeproviderTrue = Provider.of(context,listen: true);
    return SafeArea(
      child: CupertinoPageScaffold(
        backgroundColor: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Apple Store",style: GoogleFonts.lato(color: Colors.black,letterSpacing: 1,fontSize: 25,fontWeight: FontWeight.w600),),
            ),
            Expanded(child: Container(child: ListView.builder(itemBuilder: (context, index) => productBox(homeprovider!.imgPath[index]),itemCount: homeprovider!.imgPath.length,shrinkWrap: true))),
          ],
        ),
      ),
    );
  }

  Widget productBox(String path)
  {
    return Container(
      margin: EdgeInsets.all(5),
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      alignment: Alignment.center,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.all(5),
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset("${path}",fit: BoxFit.cover),
          ),
          SizedBox(width: 5,),
          Expanded(
            child: Container(
              height: 100,
              width: 100,
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
                    child: Icon(Icons.add_circle_outline,color: Colors.lightBlue,),
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

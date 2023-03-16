import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ios_ecommerce_store/screens/homescreen/provider/homeprovider.dart';
import 'package:provider/provider.dart';

class Filterscreen extends StatefulWidget {
  const Filterscreen({Key? key}) : super(key: key);

  @override
  State<Filterscreen> createState() => _FilterscreenState();
}

class _FilterscreenState extends State<Filterscreen> {
  @override
  Widget build(BuildContext context) {

    Homeprovider homeprovider = Provider.of(context,listen: false);

    return SafeArea(
      child: CupertinoPageScaffold(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.all(10),
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey.shade400,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  SizedBox(width: 5,),
                  Icon(Icons.search,color: Colors.black,),
                  SizedBox(width: 10,),
                  Text("Search",style: TextStyle(color: Colors.black,letterSpacing: 1)),
                  Spacer(),
                  Icon(Icons.close_outlined,color: Colors.black),
                  SizedBox(width: 5,),
                ],
              ),
            ),

            ListView.builder(itemBuilder: (context, index) => productBox(homeprovider!.imgPath[index+2]),shrinkWrap: true,itemCount: 5,),

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

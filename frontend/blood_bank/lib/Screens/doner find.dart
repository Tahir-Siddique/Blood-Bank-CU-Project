import 'package:blood_bank/Screens/requestforblood.dart';
import 'package:blood_bank/Screens/requests.dart';
import 'package:blood_bank/components/cardcompnent.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../consts.dart';

class DonerFindList extends StatefulWidget {


  @override
  _DonerFindListState createState() => _DonerFindListState();
}

class _DonerFindListState extends State<DonerFindList> {
  @override
  Widget build(BuildContext context) {
    final cw=MediaQuery.of(context).size.width;
    final ch=MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(leading:
      IconButton(onPressed: (){
        setState(() {
          Navigator.pop(context,MaterialPageRoute(builder: (context) =>Requests()));
        });
      },icon: Icon(Icons.arrow_back_ios_rounded),
        color: Colors.grey,),backgroundColor: white,elevation: 0,),
      backgroundColor: white,
      body: Container(
        padding:EdgeInsets.only(top: 10,left: 15,right: 10,),
        margin: EdgeInsets.all(15),
        child: ListView(
          children: [
            Text('Donor List', textAlign: TextAlign.start, style:GoogleFonts.roboto(fontSize: 25,fontWeight: FontWeight.bold)),
            SizedBox(height: 5,),
            Text("Found 23 donors arround you", textAlign: TextAlign.start, style:GoogleFonts.roboto(fontSize: 14,color: grey)),
            SizedBox(height: 10,),
            CardComponent(),
            CardComponent(),
            CardComponent(),
            CardComponent(),
            CardComponent(),
          ],

        ),
      ),
    );
  }
}

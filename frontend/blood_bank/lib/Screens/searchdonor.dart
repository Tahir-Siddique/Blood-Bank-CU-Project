import 'package:blood_bank/Screens/requestforblood.dart';
import 'package:blood_bank/components/cardcomponent2.dart';
import 'package:blood_bank/consts.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'finddonor.dart';

class SearchDonor extends StatefulWidget {

  @override
  _SearchDonorState createState() => _SearchDonorState();
}

class _SearchDonorState extends State<SearchDonor> {
  @override
  Widget build(BuildContext context) {
    final cw=MediaQuery.of(context).size.width;
    final ch=MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(leading:
      IconButton(onPressed: (){
        setState(() {
          Navigator.pop(context,MaterialPageRoute(builder: (context) => FindDonor()));
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
              CardsDonor(),
              CardsDonor(),
              CardsDonor(),
              CardsDonor(),
              CardsDonor(),
            ],

          ),
      ),
    );
  }
}

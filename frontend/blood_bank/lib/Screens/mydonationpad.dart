import 'package:blood_bank/components/mydonation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../consts.dart';

class MyDonationPad extends StatefulWidget {

  @override
  _MyDonationPadState createState() => _MyDonationPadState();
}

class _MyDonationPadState extends State<MyDonationPad> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:EdgeInsets.only(top: 10,left: 15,),
      margin: EdgeInsets.all(15),
      child: ListView(
        children: [
          Text('Donation History', textAlign: TextAlign.start, style:GoogleFonts.roboto(fontSize: 25,fontWeight: FontWeight.bold)),
          SizedBox(height: 5,),
          Text("Check Your Donation History as well as people Donation on our AppName", textAlign: TextAlign.start, style:GoogleFonts.roboto(fontSize: 14,color: grey)),
          SizedBox(height: 5,),
          Container(
            padding: EdgeInsets.only(left: 3),
            color: carot,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 150,
                  height: 100,
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        elvchange(elv.one);
                      });
                    },
                    child: Card(
                      color: elv1col,
                      elevation: elv1,
                      child: Center(child: Text("Recent People Donation",textAlign: TextAlign.start,style: GoogleFonts.roboto(fontSize: 14,fontWeight: FontWeight.bold,color: elv1txt),)),
                    ),
                  ),
                ),
                SizedBox(
                  width: 150,
                  height: 100,
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        elvchange(elv.two);
                      });
                    },
                    child: Card(
                      color: elv2col,
                      elevation: elv2,
                      child: Center(child: Text("My Donation",style: GoogleFonts.roboto(fontSize: 14,fontWeight: FontWeight.bold,color: elv2txt),)),
                    ),
                  ),
                ),

              ],
            ),
          ),
         MyDonation(),
          MyDonation(),
          MyDonation(),
          MyDonation(),
          MyDonation(),
        ],
      ),

    );
  }
}

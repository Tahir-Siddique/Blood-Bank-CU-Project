import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../consts.dart';
class DonationCard extends StatefulWidget {


  @override
  _DonationCardState createState() => _DonationCardState();
}

class _DonationCardState extends State<DonationCard> {
  @override
  Widget build(BuildContext context) {
    final cw=MediaQuery.of(context).size.width;
    final ch=MediaQuery.of(context).size.height;
    return Card(
      elevation: 6.0,
      child: Container(
        padding: EdgeInsets.only(top: 3,bottom: 3,left: 3,right: 3),
        color: whiteful,
        width: cw,
        height: ch/5,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                trailing: Container(
                  width: 50,
                  height: 30,
                  color: carot,
                  child: Center(child: Text("A+", textAlign: TextAlign.center, style:GoogleFonts.roboto(fontSize: 16,color: grey))),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                        child: CircleAvatar(
                          backgroundImage: AssetImage("images/rizvi-ceration5.jpg"),

                        ),


                        width: 83,
                        height: 83,
                        decoration: BoxDecoration(
                          color : Color.fromRGBO(255, 255, 255, 1),
                          border : Border.all(
                            color: Color.fromRGBO(251, 166, 166, 1),
                            width: 5,
                          ),
                          borderRadius : BorderRadius.all(Radius.elliptical(83, 83)),
                        )
                    ),
                    SizedBox(width: 10,),
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(bottom: 5),
                            child:  Text("User Name", style:GoogleFonts.roboto(fontSize: 16,color: black,fontWeight: FontWeight.bold)),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 3 ),
                            child:  Text("Last Donation", style:GoogleFonts.roboto(fontSize: 13,color: black,fontWeight: FontWeight.bold)),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 2 ),
                            child:  Text("4 month ago",textAlign: TextAlign.start, style:GoogleFonts.roboto(fontSize: 12,color: grey)),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 15,),
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 25,),
                          Container(
                            padding: EdgeInsets.only(top: 3 ),
                            child:  Text("Location", style:GoogleFonts.roboto(fontSize: 13,color: black,fontWeight: FontWeight.bold)),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 2 ),
                            child:  Text("New Sharqi,Vehari", style:GoogleFonts.roboto(fontSize: 12,color: grey)),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

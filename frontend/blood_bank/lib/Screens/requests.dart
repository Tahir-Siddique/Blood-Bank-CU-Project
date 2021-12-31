import 'package:blood_bank/components/receivedrequesta.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../consts.dart';

class Requests extends StatefulWidget {

  @override
  _RequestsState createState() => _RequestsState();
}

class _RequestsState extends State<Requests> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:EdgeInsets.only(top: 10,left: 15,),
      margin: EdgeInsets.all(15),
      child: ListView(
        children: [
          Text('Find Donor', textAlign: TextAlign.start, style:GoogleFonts.roboto(fontSize: 25,fontWeight: FontWeight.bold)),
          SizedBox(height: 5,),
          Text("See blood request and check other blood request you have made", textAlign: TextAlign.start, style:GoogleFonts.roboto(fontSize: 14,color: grey)),
          SizedBox(height: 5,),
          Container(
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
                          child: Center(child: Text("Received Requests",style: GoogleFonts.roboto(fontSize: 14,fontWeight: FontWeight.bold,color: elv1txt),)),
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
                      child: Center(child: Text("My Requests",style: GoogleFonts.roboto(fontSize: 14,fontWeight: FontWeight.bold,color: elv2txt),)),
                    ),
                  ),
                ),

                  ],
                ),
          ),
          ReceivedRequest(),
          ReceivedRequest(),
          ReceivedRequest(),
          ReceivedRequest(),
          ReceivedRequest(),


        ],

      )
    );
  }
}

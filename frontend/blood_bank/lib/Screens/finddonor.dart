import 'package:blood_bank/Screens/searchdonor.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../consts.dart';

class FindDonor extends StatefulWidget {


  @override
  _FindDonorState createState() => _FindDonorState();
}

class _FindDonorState extends State<FindDonor> {

  @override
  Widget build(BuildContext context) {
    final cw=MediaQuery.of(context).size.width;
    final ch=MediaQuery.of(context).size.height;
    return Scaffold(
      // appBar: AppBar(leading: IconButton(onPressed: (){},icon: Icon(Icons.arrow_back_ios_rounded),color: Colors.grey,),backgroundColor: white,elevation: 0,),
      backgroundColor: white,
      body: Container(

        padding:EdgeInsets.only(top: 10,left: 15,right: 10,),
       margin: EdgeInsets.all(15),
        
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text('Find Donor', textAlign: TextAlign.start, style:GoogleFonts.roboto(fontSize: 25,fontWeight: FontWeight.bold)),
               SizedBox(height: 5,),
               Text("Search for blood donor around you", textAlign: TextAlign.start, style:GoogleFonts.roboto(fontSize: 14,color: grey)),
              Container(
                padding: EdgeInsets.only(top: 15),
                child: Text("Choose Blood Group", textAlign: TextAlign.start, style:GoogleFonts.roboto(fontSize: 14,color: grey)),
              ),
              SizedBox(height: 10,),
              Card(
                elevation: 5.0,
                child: Container(
                  padding: EdgeInsets.only(top: 3,bottom: 3,left: 3,right: 3),
                  color: whiteful,
                  width: cw,
                  height: ch/12,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              colorchange(Box.b1);
                            });
                          },
                          child: Container(
                            color: b1,
                            height: ch,
                            width: cw/8,
                            child: Center(child: Text("A+",style: GoogleFonts.roboto(fontSize: 23,fontWeight: FontWeight.bold,color: txt1),)),),
                        ),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              colorchange(Box.b2);
                            });
                          },
                          child: Container(
                            color: b2,
                            height: ch,
                            width: cw/8,
                            child: Center(child: Text("A-",style: GoogleFonts.roboto(fontSize: 23,fontWeight: FontWeight.bold,color: txt2),)),),
                        ),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              colorchange(Box.b3);
                            });
                          },
                          child: Container(
                            color: b3,
                            height: ch,
                            width: cw/8,
                            child: Center(child: Text("B+",style: GoogleFonts.roboto(fontSize: 23,fontWeight: FontWeight.bold,color: txt3),)),),
                        ),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              colorchange(Box.b4);

                            });
                          },
                          child: Container(
                            color: b4,
                            height: ch,
                            width: cw/8,
                            child: Center(child: Text("B-",style: GoogleFonts.roboto(fontSize: 23,fontWeight: FontWeight.bold,color: txt4),)),),
                        ),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              colorchange(Box.b5);

                            });
                          },
                          child: Container(
                            color: b5,
                            height: ch,
                            width: cw/8,
                            child: Center(child: Text("O+",style: GoogleFonts.roboto(fontSize: 23,fontWeight: FontWeight.bold,color: txt5),)),),
                        ),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              colorchange(Box.b6);

                            });
                          },
                          child: Container(
                            color: b6,
                            height: ch,
                            width: cw/8,
                            child: Center(child: Text("O-",style: GoogleFonts.roboto(fontSize: 23,fontWeight: FontWeight.bold,color: txt6),)),),
                        ),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              colorchange(Box.b7);

                            });
                          },
                          child: Container(
                            color: b7,
                            height: ch,
                            width: cw/8,
                            child: Center(child: Text("AB+",style: GoogleFonts.roboto(fontSize: 23,fontWeight: FontWeight.bold,color: txt7),)),),
                        ),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              colorchange(Box.b8);

                            });
                          },
                          child: Container(
                            color: b8,
                            height: ch,
                            width: cw/8,
                            child: Center(child: Text("AB-",style: GoogleFonts.roboto(fontSize: 23,fontWeight: FontWeight.bold,color: txt8),)),),
                        ),

                      ],
                    ),

                  ),
                ),
              ),
              SizedBox(height: 40,),
              Text("Location", textAlign: TextAlign.start, style:GoogleFonts.roboto(fontSize: 14,color: grey)),
              SizedBox(height: 5,),
              Card(
                elevation: 5.0,
                child: Container(
                  padding: EdgeInsets.only(top: 3,bottom: 3,left: 3,right: 3),
                  color: whiteful,
                  width: cw,
                  height: ch/12,
                  child: TextFormField(
                    decoration: InputDecoration(
                     hintText: "Chose Location",
                      hintStyle: GoogleFonts.roboto(fontSize: 14,color: grey),
                      border: InputBorder.none,
                    ),

                  )
                ),
              ),
              SizedBox(height: 40,),
              Container(
                  padding: EdgeInsets.only(top: 3,bottom: 3,left: 3,right: 3),
                  color: whiteful,
                  width: cw,
                  height: ch/12,
                  child: RaisedButton(
                    onPressed: (){
                      setState(() {
                        Navigator.push(context,MaterialPageRoute(builder: (context) => SearchDonor()));
                      });

                    },
                    color: red,
                    child: Center(child: Text("Search Donor", style:GoogleFonts.roboto(fontSize: 14,color: white,fontWeight: FontWeight.bold))),
                  )
              ),
              SizedBox(height: 5,),
              Container(
                  padding: EdgeInsets.only(top: 3,bottom: 3,left: 3,right: 3),
                  color: whiteful,
                  width: cw,
                  height: ch/12,
                  child: RaisedButton(
                    onPressed: (){

                    },
                    color: carot,
                    child: Center(child: Text("Emergency", style:GoogleFonts.roboto(fontSize: 14,color: red,fontWeight: FontWeight.bold))),
                  )
              ),

            ],
          ),
        ),
      ),


    );
  }
}

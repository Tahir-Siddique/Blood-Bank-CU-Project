import 'package:blood_bank/Screens/searchdonor.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../consts.dart';
import 'doner find.dart';

class RequestForDoner extends StatefulWidget {


  @override
  _RequestForDonerState createState() => _RequestForDonerState();
}

class _RequestForDonerState extends State<RequestForDoner> {
  Color unit=whiteful;
  @override
  Widget build(BuildContext context) {
    final cw=MediaQuery.of(context).size.width;
    final ch=MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(leading:
      IconButton(onPressed: (){
        setState(() {
          Navigator.pop(context,MaterialPageRoute(builder: (context) => SearchDonor()));
        });
      },icon: Icon(Icons.arrow_back_ios_rounded),
        color: Colors.grey,),backgroundColor: white,elevation: 0,),
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
              SizedBox(height: 10,),
              Text("Date", textAlign: TextAlign.start, style:GoogleFonts.roboto(fontSize: 14,color: grey)),
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
                        hintText: "Chose Date",
                        hintStyle: GoogleFonts.roboto(fontSize: 14,color: grey),
                        border: InputBorder.none,
                      ),

                    )
                ),
              ),
              SizedBox(height: 10,),
              Text("Time", textAlign: TextAlign.start, style:GoogleFonts.roboto(fontSize: 14,color: grey)),
              SizedBox(height: 5,),
              Stack(
                alignment: Alignment.center,
                children: [
                  Card(
                    elevation: 5.0,
                    child: Container(
                        padding: EdgeInsets.only(top: 3,bottom: 3,left: 3,right: 3),
                        color: whiteful,
                        width: cw,
                        height: ch/12,
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Chose Time",
                            hintStyle: GoogleFonts.roboto(fontSize: 14,color: grey),
                            border: InputBorder.none,
                          ),

                        )
                    ),
                  ),
                 Container(
                   padding: EdgeInsets.only(left: 150),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.end,
                     children: [
                     GestureDetector(
                     onTap: (){
                       setState(() {
                         ampmchaage(ampm.am);
                       });
                     },
                     child: Container(
                       color: am,
                       height: 30,
                       width: 40,
                       child: Center(child: Text("AM",style: GoogleFonts.roboto(fontSize: 14,fontWeight: FontWeight.bold,color: black),)),),
                   ),
                     SizedBox(width: 3,),
                     GestureDetector(
                     onTap: (){
                       setState(() {
                         ampmchaage(ampm.pm);
                       });
                     },
                     child: Container(
                       color: pm,
                       height: 30,
                       width: 40,
                       child: Center(child: Text("PM",style: GoogleFonts.roboto(fontSize: 14,fontWeight: FontWeight.bold,color: black),)),),
                   ),],),
                 )
                ],
              ),
              SizedBox(height: 10,),
              Text("Blood Unit", textAlign: TextAlign.start, style:GoogleFonts.roboto(fontSize: 14,color: grey)),
              Stack(
                alignment: Alignment.center,
                children: [
                  Card(
                    elevation: 5.0,
                    child: Container(
                        padding: EdgeInsets.only(top: 3,bottom: 3,left: 3,right: 3),
                        color: whiteful,
                        width: cw,
                        height: ch/12,
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "0.3",
                            hintStyle: GoogleFonts.roboto(fontSize: 14,color: grey),
                            border: InputBorder.none,
                          ),

                        )
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 200),
                    child:
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              unit=carot;
                            });
                          },
                          child: Container(
                            color: unit,
                            height: 30,
                            width: 40,
                            child: Center(child: Text("Pint",style: GoogleFonts.roboto(fontSize: 14,fontWeight: FontWeight.bold,color: black),)),),
                        ),

                  )
                ],
              ),
              SizedBox(height: 5,),
              Text("Patient", textAlign: TextAlign.start, style:GoogleFonts.roboto(fontSize: 14,color: grey)),
              Stack(
                alignment: Alignment.center,
                children: [
                  Card(
                    elevation: 5.0,
                    child: Container(
                        padding: EdgeInsets.only(top: 3,bottom: 3,left: 3,right: 3),
                        color: whiteful,
                        width: cw,
                        height: ch/12,
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Patient Name",
                            hintStyle: GoogleFonts.roboto(fontSize: 14,color: grey),
                            border: InputBorder.none,
                          ),

                        )
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 150),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: (){
                            setState(() {
                             malefemale(gender.male);
                            });
                          },
                          child: Container(
                            color: male,
                            height: 30,
                            width: 40,
                            child: Center(child: Text("Male",style: GoogleFonts.roboto(fontSize: 14,fontWeight: FontWeight.bold,color: black),)),),
                        ),
                        SizedBox(width: 3,),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                             malefemale(gender.female);
                            });
                          },
                          child: Container(
                            color: female,
                            height: 30,
                            width: 49,
                            child: Center(child: Text("Female",style: GoogleFonts.roboto(fontSize: 14,fontWeight: FontWeight.bold,color: black),)),),
                        ),],),
                  )
                ],
              ),
              SizedBox(height: 10,),
              Container(
                  padding: EdgeInsets.only(top: 3,bottom: 3,left: 3,right: 3),
                  color: whiteful,
                  width: cw,
                  height: ch/12,
                  child: RaisedButton(
                    onPressed: (){
                      setState(() {
                        Navigator.push(context,MaterialPageRoute(builder: (context) => DonerFindList()));
                      });

                    },
                    color: red,
                    child: Center(child: Text("Request For Blood", style:GoogleFonts.roboto(fontSize: 14,color: white,fontWeight: FontWeight.bold))),
                  )
              ),

            ],
          ),
        ),
      ),


    );
  }
}
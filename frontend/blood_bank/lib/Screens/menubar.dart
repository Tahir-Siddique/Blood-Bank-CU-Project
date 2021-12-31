import 'package:blood_bank/Screens/requests.dart';
import 'package:blood_bank/consts.dart';
import 'package:flutter/material.dart';

import 'donationhistory.dart';
import 'finddonor.dart';


class Menubar extends StatefulWidget {

  @override
  State<Menubar> createState() => _MenubarState();
}


class _MenubarState extends State<Menubar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static  List<Widget> _widgetOptions = <Widget>[
    FindDonor(),
    Requests(),
    DonationHistory(),
    Text(
      'profile',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: IconButton(onPressed: (){},icon: Icon(Icons.arrow_back_ios_rounded),color: Colors.grey,
        iconSize: 20,

      ),
        backgroundColor: white,elevation: 0,),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Stack(
        alignment: Alignment.center,
        overflow: Overflow.visible,
        children: [
          Container(
           decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
          bottomLeft: Radius.circular(0),
          bottomRight: Radius.circular(0),),
          boxShadow : [BoxShadow(
          color: Color.fromRGBO(0, 0, 0, 0.25),
          offset: Offset(0,-4),
          blurRadius: 11)],
          color : Color.fromRGBO(246, 243, 243, 1),),

            width: MediaQuery.of(context).size.width,
            height: 100,
            child: BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Find Donor',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.article),
                  label: 'Request',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.history),
                  label: 'History',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Profile',
                ),
              ],
              currentIndex: _selectedIndex,
              selectedItemColor: red,
              unselectedItemColor: black,
              showUnselectedLabels: true ,
              iconSize: 20,
              onTap: _onItemTapped,
            ),
          ),
          Positioned(
            top: -65,
            child: GestureDetector(
              onTap: (){},
              child: Container(

                child: Icon(Icons.add,size: 40,color: red,),
                  width: 83,
                  height: 83,
                  decoration: BoxDecoration(
                    boxShadow : [BoxShadow(
                        color: Color.fromRGBO(251, 166, 166, 1),
                        offset: Offset(0,1),
                        blurRadius: 10
                    )],
                    color : Color.fromRGBO(255, 255, 255, 1),
                    border : Border.all(
                      color: Color.fromRGBO(251, 166, 166, 1),
                      width: 1,
                    ),
                    borderRadius : BorderRadius.all(Radius.elliptical(83, 83)),
                  )
              ),
            ),
          )
        ],
      ),
    );
  }
}



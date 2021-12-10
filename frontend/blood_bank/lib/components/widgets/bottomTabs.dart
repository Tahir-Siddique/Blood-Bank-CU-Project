import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Bottomtabs extends StatefulWidget {
  final int selectedTab;
  final Function(int) pressTabPage;

  Bottomtabs({this.selectedTab, this.pressTabPage});

  @override
  _BottomtabsState createState() => _BottomtabsState();
}

class _BottomtabsState extends State<Bottomtabs> {
  int _selectedTab = 1;

  @override
  Widget build(BuildContext context) {
    _selectedTab = widget.selectedTab ?? 0;
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        BottomTabsBtn(
            buttonName: "home",
            selected: _selectedTab == 0 ? true : false,
            onPressed: () {
              widget.pressTabPage(0);
            }),
        BottomTabsBtn(
          buttonName: "search",
          selected: _selectedTab == 1 ? true : false,
          onPressed: () {
            widget.pressTabPage(1);
          },
        ),
        BottomTabsBtn(
          buttonName: "saved",
          selected: _selectedTab == 2 ? true : false,
          onPressed: () {
            widget.pressTabPage(2);
          },
        ),
        BottomTabsBtn(
          buttonName: "logout",
          selected: _selectedTab == 3 ? true : false,
          onPressed: () {
            FirebaseAuth.instance.signOut();
            Navigator.pushNamed(context, '/login');
          },
        ),
      ],
    ));
  }
}

class BottomTabsBtn extends StatelessWidget {
  final String buttonName;
  final bool selected;
  final Function onPressed;
  BottomTabsBtn({this.buttonName, this.selected, this.onPressed});
  @override
  Widget build(BuildContext context) {
    bool _selected = selected ?? false;
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 28.0),
        decoration: BoxDecoration(
            border: Border(
                top: BorderSide(
                    color: _selected
                        ? Theme.of(context).accentColor
                        : Colors.transparent,
                    width: 2.0))),
        child: Image(
          image: AssetImage("assets/tab_${buttonName}@2x.png"),
          color: _selected ? Theme.of(context).accentColor : Colors.black,
          width: 26.0,
          height: 26.0,
        ),
      ),
    );
  }
}

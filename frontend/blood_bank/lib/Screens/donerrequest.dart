import 'package:flutter/material.dart';

import 'menubar.dart';

class DonerRequest extends StatefulWidget {

  @override
  _DonerRequestState createState() => _DonerRequestState();
}

class _DonerRequestState extends State<DonerRequest> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text("DonerRequest"),
      ),
      bottomNavigationBar:  Menubar(),
       //dimy



    );
  }
}

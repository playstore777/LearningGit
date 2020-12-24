import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_app/my_widgets/myScaffoldBody.dart';

class MyScaffold extends StatelessWidget {
  final appBarName, address;
  MyScaffold({key: Key, this.appBarName, this.address});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 15.0,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        title: Text(
          this.appBarName,
          // 'Tasty Recipies',
          style: GoogleFonts.pacifico(
              textStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.5)),
        ),
        actions: [
          CircleAvatar(
            child: Image.network(this.address),
            radius: 25.0,
          )
        ],
      ),
      body: AppBody(),
    );
  }
}

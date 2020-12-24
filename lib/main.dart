import 'package:flutter/material.dart';
import 'package:recipe_app/my_widgets/myScaffold.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyScaffold(
            appBarName: 'Tasty Recipes',
            address:
                'https://www.woolha.com/media/2020/03/flutter-circleavatar-minradius-maxradius.jpg')); //Scaffold class(dart file) for extra convinience
  }
}

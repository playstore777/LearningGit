import 'package:flutter/material.dart';
import 'package:recipe_app/my_widgets/myRow.dart';

class AppBody extends StatefulWidget {
  AppBody({key: Key});
  @override
  _AppBodyState createState() => _AppBodyState();
}

class _AppBodyState extends State<AppBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.network(
              'https://images.unsplash.com/photo-1578425570266-f54ed5c862ff?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=429&q=80'),
          // 'https://josephscollege.ac.in/wp-content/uploads/2019/05/principal-new-1.jpg'),
          SizedBox(
            height: 20,
          ),
          Text(
            'What do we have for you?',
            // 'What you can do?',
            textScaleFactor: 2,
          ),
          SizedBox(
            height: 20,
          ),
          MyRow(
              name: 'ChocoCake with two ingredients',
              address:
                  'https://images.unsplash.com/photo-1607257882338-70f7dd2ae344?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=890&q=80',
              rating: '⭐⭐⭐⭐⭐',
              time: '45 mins'),
          MyRow(
              name: 'ChocoCake with one ingredients',
              address:
                  'https://images.unsplash.com/photo-1600631343437-07520abddc68?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80',
              rating: '⭐⭐⭐⭐',
              time: '15 mins')
        ],
      ),
    );
  }
}

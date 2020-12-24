import 'package:flutter/material.dart';

class DetailedRecipe extends StatefulWidget {
  final name, address, rating, time;
  DetailedRecipe({key: Key, this.name, this.address, this.rating, this.time});
  @override
  _DetailedRecipeState createState() => _DetailedRecipeState(
      name: this.name,
      address: this.address,
      rating: this.rating,
      time: this.time);
}

class _DetailedRecipeState extends State<DetailedRecipe> {
  final name, address, rating, time;
  _DetailedRecipeState({this.name, this.address, this.rating, this.time});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(top: 23.8),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(children: [
                    Image.network(this.address),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 30,
                          ),
                          onPressed: () => Navigator.pop(context)),
                    )
                  ]),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          this.name,
                          style: TextStyle(
                              fontSize: 26.0, fontWeight: FontWeight.w600),
                        ),
                        Icon(
                          Icons.favorite_outline,
                          size: 30.0,
                          color: Colors.pinkAccent,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(this.rating, style: TextStyle(fontSize: 26)),
                        SizedBox(
                          width: 160,
                        ),
                        Text(
                          this.time,
                          style: TextStyle(fontSize: 18),
                        ),
                        Icon(Icons.timer)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                '''1. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor 
incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis 
nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.''',
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w600,
                                    wordSpacing: 2),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                '''2. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor 
incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis 
nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.''',
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w600,
                                    wordSpacing: 2),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

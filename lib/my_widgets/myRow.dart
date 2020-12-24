import 'package:flutter/material.dart';
import 'package:recipe_app/my_widgets/recipeDetails.dart';
import 'package:recipe_app/my_widgets/rowOfMyRow.dart';

class MyRow extends StatelessWidget {
  final name, address, rating, time;
  MyRow({key: Key, this.name, this.address, this.rating, this.time});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailedRecipe(
                          name: this.name,
                          address: this.address,
                          rating: this.rating,
                          time: this.time,
                        )));
          },
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
                height: 156,
                width: 390,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 10,
                      )
                    ]),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(160, 10, 10, 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RowOfMyRow(
                        name: this.name,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [Text(this.rating)],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(this.time,
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 16)),
                          Icon(Icons.timer)
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 7,
                left: 20,
                bottom: 7,
                right: 260,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    this.address,
                    // 'https://images.unsplash.com/photo-1607257882338-70f7dd2ae344?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=890&q=80',
                    width: 160.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

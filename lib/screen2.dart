import 'package:flutter/material.dart';
import 'HomeScreen.dart';
import 'configuration.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Container(
                    color: Colors.blueGrey,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 40),
            child: Align(
              alignment: Alignment.topCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.share, color: Colors.white),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Align(
              alignment: Alignment.topCenter,
              child: Hero(tag: 1, child: Image.asset('images/pet-cat2.png')),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 150,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                boxShadow: ListShadow,
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 70),
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Daisy',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Abisian Cat',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '2 years old',
                          style: TextStyle(fontSize: 20),
                        ),
                        Row(
                          children: <Widget>[
                            IconButton(
                              icon:
                                  Icon(Icons.location_on, color: primarycolor),
                            ),
                            Text('Indirapuram, Ghaziabad'),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: 150,
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    height: 50,
                    width: 50,
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                    ),
                    decoration: BoxDecoration(
                      color: primarycolor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 20, right: 20),
                      height: 50,
                      width: 50,
                      child: Center(
                        child: Text(
                          'Adoption',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: primarycolor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
            ),
          ),
        ],
      ),
    );
  }
}

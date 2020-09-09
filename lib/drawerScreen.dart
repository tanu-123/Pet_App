import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'configuration.dart';
import 'HomeScreen.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 50, left: 10),
      color: primarycolor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              CircleAvatar(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset('images/image.PNG'),
                ),
              ),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Tanu Saraswat',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Text('Active Status',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                ],
              ),
            ],
          ),
          Column(
            children: drawerItem
                .map((element) => Row(
                      children: <Widget>[
                        Icon(
                          element['icon'],
                          color: Colors.white,
                          size: 40,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(element['title'],
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 30)),
                      ],
                    ))
                .toList(),
          ),
          Row(
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
              ),
              Text(
                'settings',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 10),
              Container(
                height: 20,
                width: 2,
                color: Colors.white,
              ),
              SizedBox(width: 10),
              Text(
                'Log Out',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

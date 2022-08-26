import 'package:flutter/material.dart';
import 'package:home1/data/dummydata.dart';

import 'package:home1/pages/navhome.dart';

import 'package:home1/widgets/single_friend_tile.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  var con = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    con.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: con,
      children: [
        Material(
          child: Container(
            height: 650,
            color: Colors.blueGrey[50],
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
              child: Column(children: [
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Icon(Icons.menu_open_rounded),
                //     Icon(Icons.shopping_cart_outlined)
                //   ],
                // ),
                SizedBox(height: 70.0),
                Image.asset('images/logo.jpg', width: 150),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Text('Welcome',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold)),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text('Order your favirot food, just a few click away',
                        style: TextStyle(color: Colors.grey[600])),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.orange.shade700,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                    var rout = new MaterialPageRoute(
                        builder: (BuildContext context) => NavHome());
                    Navigator.of(context).push(rout);
                  },
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.arrow_forward_ios_rounded),
                        SizedBox(width: 50),
                        Text('Get Started'),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    side: BorderSide(width: 1, color: Colors.black),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Skip',
                          style: TextStyle(
                            color: Colors.grey[800],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have an account?'),
                    SizedBox(width: 5),
                    Text(
                      'Sign in',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ]),
            ),
          ),
        ),
        Container(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return SingleFriendTile(friend: myFriends.elementAt(index));
            },
            itemCount: myFriends.length,
          ),
        ),
        Container(
          child: FlutterLogo(),
        ),
        Container(
          child: FlutterLogo(),
        )
      ],
    );
  }
}

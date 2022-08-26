import 'package:flutter/material.dart';
import 'package:home1/pages/navhome.dart';
import 'package:home1/pages/orderhistory.dart';

class Pagemenu extends StatelessWidget {
  const Pagemenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Container(
          color: Colors.grey[50],
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    child: Icon(Icons.close_rounded),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  Icon(Icons.shopping_cart_outlined)
                ],
              ),
              SizedBox(height: 30.0),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.orange.shade700, width: 2),
                    borderRadius: BorderRadius.circular(10)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    'https://qph.fs.quoracdn.net/main-thumb-1278318002-200-ydzfegagslcexelzgsnplcklfkienzfr.jpeg',
                    width: 150,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Smith Sheikh',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Smith@Crigly.com',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 40, 20, 40),
                  child: Column(
                    children: [
                      TextButton(
                        onPressed: () {
                          var rout = new MaterialPageRoute(
                              builder: (BuildContext context) => NavHome());
                          Navigator.of(context).push(rout);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.home,
                                      color: Colors.orange[700],
                                    ),
                                    SizedBox(width: 20),
                                    Text(
                                      'Home',
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextButton(
                        onPressed: () {
                          var rout = new MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  Orderhistory());
                          Navigator.of(context).push(rout);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.history_edu,
                                      color: Colors.green,
                                    ),
                                    SizedBox(width: 20),
                                    Text(
                                      'Orders',
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextButton(
                        onPressed: () {
                          // var rout = new MaterialPageRoute(
                          //     builder: (BuildContext context) => Home());
                          // Navigator.of(context).push(rout);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.notifications_active,
                                      color: Colors.yellow[700],
                                    ),
                                    SizedBox(width: 20),
                                    Text(
                                      'Notifications',
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextButton(
                        onPressed: () {
                          // var rout = new MaterialPageRoute(
                          //     builder: (BuildContext context) => Home());
                          // Navigator.of(context).push(rout);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.message_rounded,
                                      color: Colors.orange[700],
                                    ),
                                    SizedBox(width: 20),
                                    Text(
                                      'Address',
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextButton(
                        onPressed: () {
                          // var rout = new MaterialPageRoute(
                          //     builder: (BuildContext context) => Home());
                          // Navigator.of(context).push(rout);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.person,
                                      color: Colors.greenAccent[400],
                                    ),
                                    SizedBox(width: 20),
                                    Text(
                                      'My Profile',
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextButton(
                        onPressed: () {
                          // var rout = new MaterialPageRoute(
                          //     builder: (BuildContext context) => Home());
                          // Navigator.of(context).push(rout);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.settings,
                                      color: Colors.red[800],
                                    ),
                                    SizedBox(width: 20),
                                    Text(
                                      'Settings',
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}

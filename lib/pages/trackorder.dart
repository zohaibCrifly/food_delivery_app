import 'package:flutter/material.dart';
import 'package:home1/pages/pagemenu.dart';

class TrackOrder extends StatefulWidget {
  const TrackOrder({Key? key}) : super(key: key);

  @override
  _TrackOrderState createState() => _TrackOrderState();
}

class _TrackOrderState extends State<TrackOrder> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Container(
          color: Colors.blueGrey[50],
          child: Padding(
            padding: EdgeInsets.all(5),
            child: Column(children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 45, horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      child: Icon(Icons.menu_open_rounded),
                      onTap: () {
                        showDialog(
                            context: context, builder: (context) => Pagemenu());
                      },
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_pin,
                          color: Colors.orange[700],
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Down Town Street #42',
                          style: TextStyle(
                            color: Colors.orange[700],
                          ),
                        ),
                        SizedBox(width: 5),
                        Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: Colors.orange[700],
                        )
                      ],
                    ),
                    Icon(Icons.shopping_cart_outlined)
                  ],
                ),
              ),
              //SizedBox(height: 30.0),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'images/logo.jpg',
                  width: 100,
                  height: 100,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'On its Way!',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Expected Delivery Time',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '11:27 PM',
                style: TextStyle(
                  color: Colors.orange[700],
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 5, 8, 5),
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          color: Colors.deepOrange[100],
                                          border: Border.all(
                                              color: Colors.orange.shade700,
                                              width: 2)),
                                    ),
                                  ),
                                  Text(
                                    'Order Placed',
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ],
                              ),
                            ),
                            Text(
                              '7:15am',
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 25,
                            ),
                            Container(
                              height: 50,
                              width: 2,
                              color: Colors.orange[700],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 5, 8, 5),
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          color: Colors.deepOrange[100],
                                          border: Border.all(
                                              color: Colors.orange.shade700,
                                              width: 2)),
                                    ),
                                  ),
                                  Text(
                                    'Confermation Of Order',
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ],
                              ),
                            ),
                            Text(
                              '8:05am',
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 25,
                            ),
                            Container(
                              height: 50,
                              width: 2,
                              color: Colors.orange[700],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 5, 8, 5),
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          color: Colors.orange[700],
                                          border: Border.all(
                                              color: Colors.orange.shade700,
                                              width: 2)),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'On Its Way',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.orange[700],
                                        ),
                                        onPressed: () {
                                          trackorderdialog(context);
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              15, 5, 15, 5),
                                          child: Text(
                                            'Track Order',
                                            style: TextStyle(fontSize: 10),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Text(
                              '8:43am',
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 25,
                            ),
                            Container(
                              height: 50,
                              width: 2,
                              color: Colors.orange[700],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 5, 8, 5),
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          color: Colors.blueGrey[300],
                                          border: Border.all(
                                              color: Colors.white, width: 2)),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Delivery',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      Text(
                                        'Estimated Delivery time is 20 Minutes',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 10),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Text(
                              '10:15am',
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange[700],
                          ),
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(60, 20, 60, 20),
                            child: Text(
                              'CANCEL ORDER',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }

  void trackorderdialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
              content: Container(
                // width: 350,
                // height: 220,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Cancel Your Order?',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                          'Are you Sure you want to Cance your\norder? This will Remove your order from your upcoming deliveries.'),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pop(ctx);
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 24),
                              child: Text(
                                'No',
                                style: TextStyle(
                                    fontSize: 10, color: Colors.black87),
                              ),
                            ),
                            style:
                                ElevatedButton.styleFrom(primary: Colors.white),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 24),
                              child: Text(
                                'Yes',
                                style: TextStyle(fontSize: 10),
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.orange[700]),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              // actions: [
              //   TextButton(
              //       onPressed: () {
              //         Navigator.pop(ctx);
              //       },
              //       child: Text('close')),
              //   TextButton(
              //       onPressed: () {
              //         Navigator.pop(ctx);
              //       },
              //       child: Text('okay'))
              // ],
            ));
  }
}

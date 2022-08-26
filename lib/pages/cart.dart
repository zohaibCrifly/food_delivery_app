import 'package:flutter/material.dart';
import 'package:home1/data/Product_data.dart';
import 'package:home1/pages/pagemenu.dart';
import 'package:home1/pages/trackorder.dart';

class Cartpage extends StatefulWidget {
  final Productdata cartitem;
  final int quantity;

  const Cartpage({
    Key? key,
    required this.cartitem,
    required this.quantity,
  }) : super(key: key);

  @override
  _CartpageState createState() => _CartpageState();
}

class _CartpageState extends State<Cartpage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Container(
          color: Colors.grey[100],
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    child: Icon(Icons.menu_open_rounded),
                    onTap: () {
                      showDialog(
                          context: context, builder: (context) => Pagemenu());
                    },
                  ),
                  Icon(Icons.shopping_cart_outlined)
                ],
              ),
              SizedBox(height: 20.0),
              Text(
                'Deliver To',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(width: 5),
                  Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: Colors.orange[700],
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              for (int i = 1; i < 4; i++)
                //  Cartitem(widget: widget),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      child: Row(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                widget.cartitem.image,
                                width: MediaQuery.of(context).size.width < 400
                                    ? 120
                                    : 130,
                              )),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.cartitem.title,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width < 400
                                      ? MediaQuery.of(context).size.width - 200
                                      : MediaQuery.of(context).size.width - 210,
                                  child: Row(
                                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        widget.cartitem.currency +
                                            (widget.cartitem.price *
                                                    widget.quantity.toDouble())
                                                .toString(),
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Spacer(),
                                      Text(
                                        widget.quantity.toString() + 'x',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Spacer(),
                                      TextButton(
                                        style: TextButton.styleFrom(
                                          backgroundColor: Colors.red[50],
                                          primary: Colors.grey,
                                          textStyle:
                                              const TextStyle(fontSize: 20),
                                        ),
                                        onPressed: () => {},
                                        child: Icon(
                                          Icons.delete_outline_outlined,
                                          color: Colors.red,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(
                      Icons.add,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'ADD MORE ITEMS',
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 20,
                          fontWeight: FontWeight.w900),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              oneColumn(),
            ]),
          ),
        ),
      ),
    );
  }

  oneColumn() {
    if (MediaQuery.of(context).size.width < 800)
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width > 400 ? 180 : 160,
                child: TextField(
                  decoration: new InputDecoration(
                      labelText: 'Coupon Code',
                      fillColor: Colors.white,
                      filled: true,
                      contentPadding: MediaQuery.of(context).size.width < 400
                          ? const EdgeInsets.all(10)
                          : const EdgeInsets.all(20)),
                ),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange[700],
                    // padding: EdgeInsets.symmetric(vertical: 3, horizontal: 20),
                  ),
                  onPressed: () {},
                  child: Padding(
                    padding: MediaQuery.of(context).size.width < 400
                        ? const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 5)
                        : const EdgeInsets.symmetric(
                            vertical: 23, horizontal: 20),
                    child: Row(
                      children: [
                        Text(
                          'Aplly Coupon',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  )),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Subtotal',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                Text(
                  widget.cartitem.currency + '140',
                )
              ],
            ),
          ),
          Divider(
            color: Colors.grey[300],
            height: 1,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Shipping',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                Text('10')
              ],
            ),
          ),
          Divider(
            color: Colors.grey[300],
            height: 1,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                Text(
                  widget.cartitem.currency + (140 + 10).toString(),
                )
              ],
            ),
          ),
          Divider(
            color: Colors.grey[300],
            height: 1,
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.orange[700],
                padding: EdgeInsets.fromLTRB(50, 0, 50, 0)),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'CHECKOUT',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            onPressed: () {
              orderconfirmed(context);
            },
          ),
        ],
      );
    else
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 180,
                    child: TextField(
                      decoration: new InputDecoration(
                          labelText: 'Coupon Code',
                          fillColor: Colors.white,
                          filled: true,
                          contentPadding: const EdgeInsets.all(20)),
                    ),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.orange[700],
                          padding: EdgeInsets.fromLTRB(50, 0, 50, 0)),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          children: [
                            Text(
                              'Aplly Coupon',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      )),
                ],
              ),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width < 950 ? 300 : 450,
            //width: 300,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Subtotal',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        widget.cartitem.currency + '140',
                      )
                    ],
                  ),
                ),
                Divider(
                  color: Colors.grey[300],
                  height: 1,
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Shipping',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      Text('10')
                    ],
                  ),
                ),
                Divider(
                  color: Colors.grey[300],
                  height: 1,
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        widget.cartitem.currency + (140 + 10).toString(),
                      )
                    ],
                  ),
                ),
                Divider(
                  color: Colors.grey[300],
                  height: 1,
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.orange[700],
                      padding: EdgeInsets.fromLTRB(50, 0, 50, 0)),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.shopping_cart_outlined,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'CHECKOUT',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  onPressed: () {
                    orderconfirmed(context);
                  },
                ),
              ],
            ),
          ),
        ],
      );
  }

  Future<dynamic> orderconfirmed(BuildContext context) {
    return showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
              content: Container(
                //height: MediaQuery.of(context).size.height * 0.73,
                color: Colors.white,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child:
                      //MediaQuery.of(context).size.width>400?
                      SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(
                          Icons.gpp_good_outlined,
                          color: Colors.orange[700],
                          size: 150,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text('Your order is placed',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                            'You can track the delivery in the "Oreders" section.'),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  var rout = new MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          TrackOrder());
                                  Navigator.of(context).push(rout);
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: Text('Track Order'),
                                ),
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.orange[700]),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.white),
                                  onPressed: () {
                                    Navigator.pop(ctx);
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(20),
                                    child: Text(
                                      'Cancel order',
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  )),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ));
  }
}

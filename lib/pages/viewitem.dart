import 'package:flutter/material.dart';
import 'package:home1/data/Product_data.dart';
import 'package:home1/pages/cart.dart';

class Viewitem extends StatefulWidget {
  final Productdata singleitem;
  final int itemid;
  const Viewitem({Key? key, required this.itemid, required this.singleitem})
      : super(key: key);

  @override
  _ViewitemState createState() => _ViewitemState();
}

class _ViewitemState extends State<Viewitem> {
  checkIthem() {}

  int numberOfItem = 1;
  List<bool> check = [];
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Container(
          color: Colors.grey[100],
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        widget.singleitem.image,
                        height: 310,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 320),
                      child: Container(
                        width: 180,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(
                                child:
                                    Icon(Icons.remove, color: Colors.black87),
                                onPressed: () {
                                  setState(() {
                                    if (numberOfItem > 1) numberOfItem--;
                                  });
                                },
                              ),
                              Text(
                                numberOfItem.toString(),
                                style: TextStyle(fontSize: 18.0),
                              ),
                              TextButton(
                                child: Icon(Icons.add, color: Colors.black87),
                                onPressed: () {
                                  setState(() {
                                    numberOfItem++;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              widget.singleitem.title,
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              widget.singleitem.currency +
                                  widget.singleitem.price.toString(),
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                widget.singleitem.tag,
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                widget.singleitem.weight,
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            widget.singleitem.longDescription,
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    widget.singleitem.rating.toString(),
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Image.asset(
                                    'images/fire-icon.jpg',
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    widget.singleitem.calorires.toString() +
                                        ' cal',
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.timer,
                                    color: Colors.red,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    widget.singleitem.arrivaltime.toString(),
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Text(
                              'Extras',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Column(
                          children: List.generate(
                              widget.singleitem.extras.length, (index) {
                            check.add(false);

                            return Padding(
                              padding: EdgeInsets.only(bottom: 20),
                              child: Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        if (!check[index])
                                          check[index] = true;
                                        else
                                          check[index] = false;
                                      });
                                    },
                                    child: Container(
                                      width: 20,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(50),
                                        border: check[index]
                                            ? Border.all(
                                                color: Colors.orange.shade700,
                                                width: 7,
                                              )
                                            : Border.all(
                                                color: Colors.white,
                                                width: 3,
                                              ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    widget.singleitem.extras[index],
                                    style:
                                        TextStyle(fontWeight: FontWeight.w900),
                                  )
                                ],
                              ),
                            );
                          }),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                // shape: RoundedRectangleBorder(
                                //   borderRadius: BorderRadius.circular(10),
                                // ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 20),
                                child: Icon(
                                  Icons.favorite_outline,
                                  color: Colors.grey,
                                ),
                              ),
                              onPressed: () {
                                setState(() {});
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.orange[700]),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 20),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.shopping_cart_outlined,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text('ADD TO CART')
                                  ],
                                ),
                              ),
                              onPressed: () {
                                var route = new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      new Cartpage(
                                    cartitem: widget.singleitem,
                                    quantity: numberOfItem,
                                  ),
                                );
                                Navigator.of(context).push(route);
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

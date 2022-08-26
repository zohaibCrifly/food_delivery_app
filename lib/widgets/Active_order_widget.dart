import 'package:flutter/material.dart';
import 'package:home1/data/ActiveOrderData.dart';
//import 'package:home1/data/pastorderlist.dart';
import 'package:home1/pages/viewitem.dart';
import 'package:home1/data/Product_data.dart';

class ActivatedOrder extends StatelessWidget {
  final ActiveOrder order;
  // final int orderCount;
  const ActivatedOrder({
    Key? key,
    required this.order,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      color: Colors.white,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: NetworkImage(order.images),
              fit: BoxFit.cover,
            )),
            height: MediaQuery.of(context).size.height - 400,
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(order.title,
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Text(
                      order.rating.toString(),
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.grey[600],
                      radius: 2,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(order.area, style: TextStyle(color: Colors.grey[600])),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.grey[600],
                      radius: 2,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(order.currency + order.price.toString(),
                        style: TextStyle(color: Colors.grey[600])),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      order.description,
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[200],
                      ),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.all(16.0),
                          primary: Colors.grey,
                          textStyle: const TextStyle(fontSize: 20),
                        ),
                        onPressed: () {
                          var rout = new MaterialPageRoute(
                              builder: (BuildContext context) => Viewitem(
                                  itemid: 1,
                                  singleitem: productOrderList.first));
                          Navigator.of(context).push(rout);
                        },
                        child: Column(
                          // Replace with a Row for horizontal icon + text
                          children: <Widget>[
                            Text("View", style: TextStyle(fontSize: 12)),
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:home1/data/pastorderlist.dart';
import 'package:home1/pages/viewitem.dart';
import 'package:home1/data/Product_data.dart';

class SinglePastOrderTile extends StatelessWidget {
  final PastOrder order;
  const SinglePastOrderTile({Key? key, required this.order}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        color: Colors.white,
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  order.image,
                  width: 130,
                  height: 110,
                  fit: BoxFit.fill,
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(order.title,
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Spacer(),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Text(
                              order.rating.toString(),
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Text(order.description,
                            style: TextStyle(color: Colors.grey[600])),
                        Row(
                          children: [
                            Text(
                              order.currency + order.price.toString(),
                              style: TextStyle(
                                  color: Colors.red[900],
                                  fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
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
                                      builder: (BuildContext context) =>
                                          Viewitem(
                                              itemid: 1,
                                              singleitem:
                                                  productOrderList.first));
                                  Navigator.of(context).push(rout);
                                },
                                child: Column(
                                  // Replace with a Row for horizontal icon + text
                                  children: <Widget>[
                                    Text(
                                      "Reorder",
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

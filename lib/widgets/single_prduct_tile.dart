import 'package:flutter/material.dart';
import 'package:home1/data/Product_data.dart';
import 'package:home1/pages/viewitem.dart';

class Productdataplate extends StatelessWidget {
  final Productdata productdisplay;
  const Productdataplate({Key? key, required this.productdisplay})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: InkWell(
        onTap: () {
          var rout = new MaterialPageRoute(
              builder: (BuildContext context) =>
                  Viewitem(itemid: 1, singleitem: productOrderList.first));
          Navigator.of(context).push(rout);
        },
        child: Card(
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(productdisplay.image,
                  // width: MediaQuery.of(context).size.width < 400 ? 80 : 130,
                  // height: MediaQuery.of(context).size.width < 400 ? 130 : 103,
                  width: 130,
                  height: 103,
                  fit: BoxFit.fill),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            productdisplay.title,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Text(
                            productdisplay.currency +
                                productdisplay.price.toString(),
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        productdisplay.description,
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Text(
                                productdisplay.rating.toString(),
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                '[120 Ratings]',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Text(
                            productdisplay.deliveryTime,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

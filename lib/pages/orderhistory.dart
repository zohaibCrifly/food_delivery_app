import 'package:flutter/material.dart';
import 'package:home1/pages/pagemenu.dart';
import 'package:home1/widgets/Single_past_order.dart';
import 'package:home1/data/pastorderlist.dart';
import 'package:home1/data/ActiveOrderData.dart';
import 'package:home1/widgets/Active_order_widget.dart';

class Orderhistory extends StatelessWidget {
  const Orderhistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Container(
          color: Colors.blueGrey[50],
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
            child: Column(
              children: [
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
                SizedBox(height: 50.0),
                Row(
                  children: [
                    Text(
                      'Active Order',
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  child: Column(
                    children: [
                      ActivatedOrder(
                        order: myActiveOrder.elementAt(0),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      'Past Order',
                      style: TextStyle(
                        fontSize: 22,
                      ),
                    ),
                  ],
                ),
                //respastorder(context),
                Container(
                  height: MediaQuery.of(context).size.width > 800
                      ? ((136 * pastOrders.length.toDouble()) / 1.7)
                      : (136 * pastOrders.length.toDouble()),
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount:
                            MediaQuery.of(context).size.width > 800 ? 2 : 1,
                        mainAxisExtent: 134,
                      ),
                      itemCount: pastOrders.length,
                      itemBuilder: (context, index) {
                        return SinglePastOrderTile(order: pastOrders[index]);
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

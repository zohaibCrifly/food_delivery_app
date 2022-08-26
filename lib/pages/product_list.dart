import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home1/data/Product_data.dart';
import 'package:home1/pages/pagemenu.dart';
import 'package:home1/widgets/filter.dart';
import 'package:home1/widgets/searchlocation.dart';
import 'package:home1/widgets/single_prduct_tile.dart';

class ProductList extends StatefulWidget {
  final String a;
  const ProductList({Key? key, required this.a}) : super(key: key);

  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Container(
          color: Colors.blueGrey[50],
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 50, horizontal: 0),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
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
              SizedBox(height: 50.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SearchField(),
                  SizedBox(width: 10),
                  IconButton(
                    onPressed: () {
                      showDialog(
                          context: context, builder: (context) => Filter());
                    },
                    icon: Icon(Icons.menu_sharp),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(widget.a),
                  ],
                ),
              ),
              // SizedBox(
              //   height: 15,
              // ),
              // Container(
              //   child: Column(
              //     children: productOrderList
              //         .map((e) => Productdataplate(productdisplay: e))
              //         .toList(),
              //   ),
              // )
              Container(
                height: MediaQuery.of(context).size.width > 800
                    ? ((136 * productOrderList.length.toDouble()) / 1.7)
                    : (136 * productOrderList.length.toDouble()),
                child: GridView.builder(
                  padding: EdgeInsets.all(0),
                  physics: ScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount:
                          MediaQuery.of(context).size.width > 800 ? 2 : 1,
                      mainAxisExtent: 110,
                      mainAxisSpacing: 15.0,
                      crossAxisSpacing: 15.0),
                  itemCount: productOrderList.length,
                  itemBuilder: (context, index) {
                    return Productdataplate(
                        productdisplay: productOrderList[index]);
                  },
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

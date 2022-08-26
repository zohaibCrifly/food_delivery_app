import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home1/data/Product_data.dart';
import 'package:home1/pages/pagemenu.dart';
import 'package:home1/widgets/filter.dart';
import 'package:home1/widgets/searchlocation.dart';
import 'package:home1/widgets/single_prduct_tile.dart';

class Search extends StatefulWidget {
  final textSearch;
  const Search({Key? key, required this.textSearch}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Container(
          color: Colors.blueGrey[50],
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        child: Icon(Icons.menu_open_rounded),
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) => Pagemenu());
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
                  Row(
                    children: [
                      Text('Result for this Location ' +
                          '"' +
                          widget.textSearch +
                          '"')
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Hot Picks',
                      ),
                    ],
                  ),
                  // SizedBox(
                  //   height: 15,
                  // ),
                ]),
              ),
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
            ],
          ),
        ),
      ),
    );
  }
}

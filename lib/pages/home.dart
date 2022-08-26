import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:home1/data/FavoriteCategoryData.dart';
import 'package:home1/data/Product_data.dart';
import 'package:home1/data/main_category.dart';
import 'package:home1/pages/product_list.dart';
import 'package:home1/pages/category_list.dart';
import 'package:home1/widgets/Favorite_category_widget.dart';
import 'package:home1/widgets/filter.dart';
import 'package:home1/widgets/main_category_widget.dart';
import 'package:home1/widgets/searchlocation.dart';
import 'package:home1/widgets/single_prduct_tile.dart';
import 'package:home1/pages/pagemenu.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Container(
          color: Colors.blueGrey[50],
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(20, 50, 20, 50),
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Your favourites',
                      ),
                      InkWell(
                        child: Row(
                          children: [
                            Text(
                              'Show all',
                              style: TextStyle(color: Colors.orange[700]),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.orange[700],
                              size: 12,
                            )
                          ],
                        ),
                        onTap: () {
                          var rout = new MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  CategoryList());
                          Navigator.of(context).push(rout);
                        },
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                          children: myFavoriteCategory
                              .map((e) => FavoriteCategoryTile(fCategory: e))
                              .toList()),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: myMainCategory
                            .map((e) => MainCategorList(mainCategorydisplay: e))
                            .toList()),
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
                      InkWell(
                        child: Row(
                          children: [
                            Text(
                              'Show all',
                              style: TextStyle(color: Colors.orange[700]),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.orange[700],
                              size: 12,
                            )
                          ],
                        ),
                        onTap: () {
                          var rout = new MaterialPageRoute(
                              builder: (BuildContext context) => ProductList(
                                    a: 'All Products',
                                  ));
                          Navigator.of(context).push(rout);
                        },
                      )
                    ],
                  ),
                ]),
              ),
              Container(
                height: MediaQuery.of(context).size.width > 800
                    ? ((136 * productOrderList.length.toDouble()) / 1.7)
                    : (136 * productOrderList.length.toDouble()),
                child: GridView.builder(
                  physics: ScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount:
                          MediaQuery.of(context).size.width > 800 ? 2 : 1,
                      // mainAxisExtent:
                      //     MediaQuery.of(context).size.width < 400 ? 140 : 120,
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

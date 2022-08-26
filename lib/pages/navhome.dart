import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:home1/data/FavoriteCategoryData.dart';
// import 'package:home1/data/Product_data.dart';
//import 'package:home1/data/main_category.dart';
import 'package:home1/pages/home.dart';
import 'package:home1/pages/orderhistory.dart';
// import 'package:home1/pages/product_list.dart';
//import 'package:home1/pages/category_list.dart';
import 'package:home1/pages/searchresult.dart';
// import 'package:home1/widgets/Favorite_category_widget.dart';
// import 'package:home1/widgets/filter.dart';
// import 'package:home1/widgets/main_category_widget.dart';
// import 'package:home1/widgets/searchlocation.dart';
//import 'package:home1/widgets/single_prduct_tile.dart';
import 'package:home1/pages/pagemenu.dart';

class NavHome extends StatefulWidget {
  const NavHome({Key? key}) : super(key: key);

  @override
  _NavHomeState createState() => _NavHomeState();
}

class _NavHomeState extends State<NavHome> {
  int selectedpage = 0;
  List<Map> navitem = [
    {'pageicon': Icons.home_outlined, 'path': Home(), 'lable': 'Home'},
    {
      'pageicon': Icons.search,
      'path': Search(textSearch: 'Search the best food'),
      'lable': 'Search'
    },
    {
      'pageicon': Icons.ac_unit,
      'path': Orderhistory(),
      'lable': 'Order History'
    },
    {'pageicon': Icons.person, 'path': Pagemenu(), 'lable': 'Profile'},
  ];
  List<bool> onhover = [false];
  List<bool> selected = [true];
  onchange(int y) {
    setState(() {
      for (int i = 0; i < navitem.length; i++) {
        if (y == i) {
          selected[i] = true;
          selectedpage = i;
        } else {
          selected[i] = false;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        child: Column(children: [
          Expanded(child: navitem[selectedpage]['path']
              
              ),
          Container(
              height: 76,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                  navitem.length,
                  (index) {
                    selected.add(false);
                    onhover.add(false);
                    return InkWell(
                      onTap: () {
                        onchange(index);
                      },
                      onHover: (event) {
                        setState(() {
                          if (event) {
                            for (int a = 0; a < onhover.length; a++)
                              if (a == index)
                                onhover[a] = true;
                              else {
                                onhover[a] = false;
                              }
                          }
                        });
                      },
                      child: Transform.translate(
                        offset: Offset(
                            0, selected[index] || onhover[index] ? -20 : 0),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: selected[index] || onhover[index]
                                        ? Colors.orange[700]
                                        : Colors.white),
                                padding: EdgeInsets.all(10),
                                child: Icon(navitem[index]['pageicon'],
                                    color: selected[index] || onhover[index]
                                        ? Colors.white
                                        : Colors.black),
                              ),
                            ),
                            Text(
                              selected[index] ? navitem[index]['lable'] : '',
                              style: TextStyle(fontSize: 10),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )),
        ]),
      ),
    );
  }
}

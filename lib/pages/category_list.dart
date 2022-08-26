import 'package:flutter/material.dart';
import 'package:home1/data/FavoriteCategoryData.dart';
import 'package:home1/pages/pagemenu.dart';
import 'package:home1/widgets/Favorite_category_widget.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({Key? key}) : super(key: key);

  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Container(
          // height: 300,
          color: Colors.grey[100],
          child: Padding(
            padding: const EdgeInsets.all(10),
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
                Text(
                  'All Categories',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20.0),
                Wrap(
                    direction: Axis.horizontal,
                    children: myFavoriteCategory
                        .map((e) => FavoriteCategoryTile(fCategory: e))
                        .toList()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

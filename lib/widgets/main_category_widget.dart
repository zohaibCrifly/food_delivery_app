import 'package:flutter/material.dart';
import 'package:home1/data/main_category.dart';
import 'package:home1/pages/product_list.dart';

class MainCategorList extends StatefulWidget {
  final MainCategory mainCategorydisplay;
  const MainCategorList({Key? key, required this.mainCategorydisplay})
      : super(key: key);

  @override
  _MainCategorListState createState() => _MainCategorListState();
}

class _MainCategorListState extends State<MainCategorList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
                color: widget.mainCategorydisplay.iconbgcolor,
                borderRadius: BorderRadius.circular(8)),
            child: TextButton(
              child: Image(
                image: AssetImage(widget.mainCategorydisplay.icon),
                width: 100,
              ),
              onPressed: () {
                var rout = new MaterialPageRoute(
                    builder: (BuildContext context) =>
                        ProductList(a: widget.mainCategorydisplay.title));
                Navigator.of(context).push(rout);
              },
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            widget.mainCategorydisplay.title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/foundation.dart';
import 'package:home1/data/FavoriteCategoryData.dart';
import 'package:flutter/material.dart';
import 'package:home1/pages/product_list.dart';

class FavoriteCategoryTile extends StatefulWidget {
  final FavoriteCategory fCategory;
  const FavoriteCategoryTile({Key? key, required this.fCategory})
      : super(key: key);

  @override
  _FavoriteCategoryTileState createState() => _FavoriteCategoryTileState();
}

class _FavoriteCategoryTileState extends State<FavoriteCategoryTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 20, 20),
      child: Container(
        child: InkWell(
          onTap: () {
            var rout = new MaterialPageRoute(
                builder: (BuildContext context) =>
                    ProductList(a: widget.fCategory.title));
            Navigator.of(context).push(rout);
          },
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(widget.fCategory.backImage,
                    height: 180,
                    width: 150,
                    fit: BoxFit.fill,
                    color: const Color.fromRGBO(128, 128, 128, 1),
                    colorBlendMode: BlendMode.modulate),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(23, 104, 0, 0),
                child: Column(
                  children: [
                    Text(
                      widget.fCategory.title,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      widget.fCategory.shortDescription,
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            widget.fCategory.frontImage,
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        border: Border.all(
                          color: Colors.red,
                          width: 2.0,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

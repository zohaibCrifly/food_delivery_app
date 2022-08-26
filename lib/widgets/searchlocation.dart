import 'package:flutter/material.dart';
import 'package:home1/pages/searchresult.dart';
//import 'package:sizer/sizer.dart';

class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    final searchText = TextEditingController();
    return Container(
      width: size - 100,
      child: TextField(
        controller: searchText,
        textInputAction: TextInputAction.go,
        onEditingComplete: () {
          var rout = new MaterialPageRoute(builder: (BuildContext context) {
            return Search(textSearch: searchText.text);
          });
          Navigator.of(context).push(rout);
        },
        decoration: new InputDecoration(
          prefixIcon: new Icon(
            Icons.search,
            color: Colors.orange[700],
          ),
          //labelText: "Search Location",
          hintText: 'Search Location',
          fillColor: Colors.white,
          filled: true,
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}

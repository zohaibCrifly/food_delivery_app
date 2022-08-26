import 'package:flutter/material.dart';

class MainCategory {
  final String title;
  var icon;
  var iconbgcolor;
  MainCategory(
      {required this.title, required this.icon, required this.iconbgcolor});
}

var myMainCategory = <MainCategory>[
  MainCategory(
    icon: 'images/burger-icon.jpg',
    title: 'Burgers',
    iconbgcolor: Colors.orange[700],
  ),
  MainCategory(
    icon: 'images/taco-icon.jpg',
    title: 'Tacos',
    iconbgcolor: Colors.lightGreen,
  ),
  MainCategory(
    icon: 'images/pizza-icon.jpg',
    title: 'Pizza',
    iconbgcolor: Colors.yellow[800],
  ),
  MainCategory(
    icon: 'images/bbq-icon.jpg',
    title: 'BBQ',
    iconbgcolor: Colors.deepOrange,
  )
];

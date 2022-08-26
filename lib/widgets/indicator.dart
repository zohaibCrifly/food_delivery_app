import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {
  final PageController controller;
  final int childCount;
  const Indicator(
      {Key? key, required this.controller, required this.childCount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
          childCount,
          (index) => AnimatedContainer(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.orange[700],
                ),
                width:
                    (controller.page ?? controller.initialPage).round() == index
                        ? 30
                        : 10,
                height: 10,
                margin: EdgeInsets.symmetric(horizontal: 2),
                duration: Duration(milliseconds: 400),
              )),
    );
  }
}

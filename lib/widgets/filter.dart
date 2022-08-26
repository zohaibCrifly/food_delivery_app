//import 'dart:math';

import 'package:flutter/material.dart';

class Filter extends StatefulWidget {
  const Filter({Key? key}) : super(key: key);

  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  var selectedRanges = RangeValues(80, 500);
  List<bool> check = [];

  List<bool> sortClick = [];
  List<bool> filterClick = [];
  late IconData sortIcon;
  List categoery = [
    'Pick Up',
    'Drive-Thru',
    'Dine-in',
    'Take Away',
    'Home Delivery',
    'Online',
  ];
  String sortby = '';
  List<Map> sortList = [
    {'sort_by': 'Top Rated', 'icon': Icons.star_outline_outlined},
    {'sort_by': 'Most Popular', 'icon': Icons.fireplace_outlined},
    {'sort_by': 'Delivery Time', 'icon': Icons.timelapse_outlined},
    {'sort_by': 'Cost Low to Hight', 'icon': Icons.auto_graph_sharp}
  ];
  List<Map> filterList = [
    {'filter': 'Credit Card Delievery', 'icon': Icons.star_outline_outlined},
    {'filter': 'Free Delievery', 'icon': Icons.fireplace_outlined},
    {'filter': 'Deals', 'icon': Icons.timelapse_outlined},
    {'filter': 'Fast Food', 'icon': Icons.auto_graph_sharp}
  ];
  radioOption(int b) {
    setState(() {
      for (int a = 0; a < sortList.length; a++)
        if (a == b)
          sortClick[b] = true;
        else
          sortClick[a] = false;
    });
  }

  filterOption(int b) {
    setState(() {
      for (int a = 0; a < filterList.length; a++)
        if (a == b)
          filterClick[b] = true;
        else
          filterClick[a] = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
      child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Reset',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Filter',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.close,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
              Divider(
                height: 30,
                thickness: .5,
                color: Colors.grey,
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: Wrap(
                  alignment: WrapAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(categoery.length, (i) {
                    // for (int i = 1; i <= categoery.length; i++)
                    check.add(false);
                    return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            if (!check[i])
                              check[i] = true;
                            else
                              check[i] = false;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: check[i]
                                  ? Colors.orange.shade700
                                  : Colors.grey.shade400,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              categoery[i],
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: check[i]
                                      ? Colors.orange[700]
                                      : Colors.grey[400]),
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text(
                    'SORT BY',
                    style: TextStyle(
                        color: Colors.grey[400], fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: List.generate(sortList.length, (index) {
                  sortClick.add(false);
                  return Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: GestureDetector(
                        onTap: () {
                          radioOption(index);
                          // if (!sortClick[index])
                          //   sortClick[index] = true;
                          // else
                          //   sortClick[index] = false;
                        },
                        child: Row(
                          children: [
                            Icon(
                              sortList[index]['icon'],
                              color: sortClick[index]
                                  ? Colors.orange[700]
                                  : Colors.black,
                            ),
                            SizedBox(width: 20),
                            Text(
                              sortList[index]['sort_by'],
                              style: TextStyle(
                                  color: sortClick[index]
                                      ? Colors.orange[700]
                                      : Colors.black,
                                  fontWeight: sortClick[index]
                                      ? FontWeight.bold
                                      : FontWeight.normal),
                            ),
                          ],
                        )),
                  );
                }),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text(
                    'Filters',
                    style: TextStyle(
                        color: Colors.grey[400], fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: List.generate(filterList.length, (index) {
                  filterClick.add(false);
                  return Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: GestureDetector(
                        onTap: () {
                          filterOption(index);
                        },
                        child: Row(
                          children: [
                            Icon(
                              filterList[index]['icon'],
                              color: filterClick[index]
                                  ? Colors.orange[700]
                                  : Colors.black,
                            ),
                            SizedBox(width: 20),
                            Text(
                              filterList[index]['filter'],
                              style: TextStyle(
                                  color: filterClick[index]
                                      ? Colors.orange[700]
                                      : Colors.black,
                                  fontWeight: filterClick[index]
                                      ? FontWeight.bold
                                      : FontWeight.normal),
                            ),
                          ],
                        )),
                  );
                }),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text(
                    'Price',
                    style: TextStyle(
                        color: Colors.grey[400], fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              RangeSlider(
                values: selectedRanges,
                onChanged: (RangeValues newRange) {
                  setState(() {
                    selectedRanges = newRange;
                  });
                },
                activeColor: Colors.orange[700],
                inactiveColor: Colors.grey,
                min: 0,
                max: 1000,
                divisions: 100,
                labels: RangeLabels(
                    '\$ ${selectedRanges.start}', '\$ ${selectedRanges.end}'),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'APPLY FILTERS',
                    style: TextStyle(fontWeight: FontWeight.w900),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.deepOrangeAccent,
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 60)),
                  clipBehavior: Clip.antiAlias)
            ]),
          )),
    ));
  }
}

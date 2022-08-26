import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home1/data/dummydata.dart';

class SingleFriendTile extends StatelessWidget {
  final Friend friend;
  const SingleFriendTile({Key? key, required this.friend}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Card(
        child: ListTile(
          onTap: () {
            ScaffoldMessenger.of(context).removeCurrentSnackBar();
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(friend.name + ' is my friend')));
          },
          title: Text(friend.name),
          subtitle: Text(friend.age.toString()),
        ),
      ),
    );
  }
}

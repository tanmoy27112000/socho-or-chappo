import 'package:flutter/material.dart';

class onlyForYou extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      child: ListTile(
        title: Text(
          "Only for you",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: IconButton(
          icon: Icon(
            Icons.arrow_forward_ios,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class onlyForYouGrid extends StatelessWidget {
  const onlyForYouGrid({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                color: Colors.green[200],
              ),
              Container(
                width: 100,
                height: 30,
                child: Center(child: Text("Mobile Cover")),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                color: Colors.green[200],
              ),
              Container(
                width: 100,
                height: 30,
                child: Center(child: Text("Mobile Cover")),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                color: Colors.green[200],
              ),
              Container(
                width: 100,
                height: 30,
                child: Center(child: Text("Mobile Cover")),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                color: Colors.green[200],
              ),
              Container(
                width: 100,
                height: 30,
                child: Center(child: Text("Mobile Cover")),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

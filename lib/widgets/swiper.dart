import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //! List imageList=[];       //! add the image url in the list
  int c = 0;
  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: EdgeInsets.only(top: 20),
      height: 200,
      child: new Swiper(
        itemBuilder: (BuildContext context, int index) {
          return new Image.network(
            "http://via.placeholder.com/288x188", //!imageList[index]
            fit: BoxFit.fill,
          );
        },
        itemCount: 10,
        viewportFraction: 0.8,
        scale: 0.9,
      ),
    );
  }
}

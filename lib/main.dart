import 'package:flutter/material.dart';
import 'package:socho_aur_chappo/widgets/onlyForYou.dart';
import 'package:socho_aur_chappo/widgets/onlyForYouGrid.dart';
import './widgets/swiper.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget bottomNavigation() {
    //!Bottom navi=
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text("Home"),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bookmark),
          title: Text("Wishlist"),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          title: Text("Cart"),
        ),
      ],
      currentIndex: 0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.white,
        buttonColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.black),
        fontFamily: 'Quicksand',
        appBarTheme: AppBarTheme(
          textTheme: ThemeData.light().textTheme.copyWith(
                title: TextStyle(
                  fontFamily: 'Quicksand',
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
        ),
      ),
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Socho aur Chappo',
            style: TextStyle(fontFamily: 'Quicksand'),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.add_shopping_cart,
                color: Colors.black,
              ),
              onPressed: () {},
            )
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text("drawer head"),
                decoration: BoxDecoration(color: Colors.yellow[200]),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Text(
                    "Print of the month",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: () {},
                  ),
                ),
              )
            ],
          ),
        ),
        body: ListView(
          children: <Widget>[
            MyHomePage(), //! the horizontal scrollable list
            SizedBox(height: 20),
            onlyForYou(), //!  only for you bar with a arrow button to be configured
            SizedBox(height: 10),
            onlyForYouGrid(), //!specialized selection grid
          ],
        ),
        bottomNavigationBar: bottomNavigation(),
      ),
    );
  }
}

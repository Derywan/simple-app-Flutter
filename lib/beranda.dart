import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:meditation_app/constants.dart';
import 'package:meditation_app/widgets/bottom_nav_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DGF Farm',
      theme: ThemeData(
        fontFamily: "Cairo",
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; //this gonna give us total height and with of our device
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: <Widget>[
                Container(
                  height: 250,
                  child: Carousel(
                    autoplay: true,
                    indicatorBgPadding: 8.0,
                    images: [
                      AssetImage('images/11.jpg'),
                      AssetImage('images/12jpg'),
                      AssetImage('images/13.jpg'),
                      AssetImage('images/14.jpg'),
                      AssetImage('images/15.jpg'),
                    ],
                  ),
                )
              ],
            ),
          )
          ),
    );
  }
}

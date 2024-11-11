import 'package:flutter/material.dart';
import 'models/trending_item.dart';
import 'pages/page1/page1.dart';
import 'pages/page2/page2.dart';
import 'pages/page3/page3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/page2': (context) => Page2(),
        '/page3': (context) {
          final TrendingItem trendingItem = ModalRoute.of(context)!.settings.arguments as TrendingItem;
          return Page3(trendingItem: trendingItem);
        },
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Page1(),
    );
  }
}

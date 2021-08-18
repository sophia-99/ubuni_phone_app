import 'package:flutter/material.dart';
import 'package:ubuni_phone_app/screen_views/home_page_view.dart';

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.teal,
      ),
      home: HomePageView(),
    );
  }
}
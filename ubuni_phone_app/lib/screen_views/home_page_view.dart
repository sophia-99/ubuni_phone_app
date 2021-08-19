import 'package:flutter/material.dart';
import 'package:ubuni_phone_app/screen_views/multiple_view.dart';
import 'package:ubuni_phone_app/screen_views/single_view.dart';


class HomePageView extends StatefulWidget {
  @override
  _HomePageViewState createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          bottomNavigationBar: BottomAppBar(
            color: Colors.teal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: Icon(Icons.share),
                  onPressed: () {},
                  color: Colors.white,
                ),
                IconButton(
                  icon: Icon(Icons.settings),
                  onPressed: () {},
                  color: Colors.white,
                ),
                IconButton(
                  icon: Icon(Icons.subscript),
                  onPressed: () {},
                  color: Colors.white,
                ),
                IconButton(
                  icon: Icon(Icons.camera),
                  onPressed: () {},
                  color: Colors.white,
                ),
              ],
            ),
          ),
          appBar: AppBar(
            
            leading: Icon(Icons.menu),
            title: Text('OurPhoneShop'),
            actions: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Icon(Icons.search),
              ),
            ],
            bottom: TabBar(
              tabs: [
                Tab(
                  text: "All Categories",
                ),
                Tab(
                  text: "Samsung",
                ),
              ],
            ),
          ),
          body: TabBarView(
            
            children: [
              MultipleView(),
              SingleView()
            ],
          )
          // _views.elementAt(_currentIndex),
          ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './home_trips.dart';
import './search_trips.dart';
import './profile_trips.dart';

class DemoTripsCupertino extends StatelessWidget {
  const DemoTripsCupertino({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          activeColor: Colors.indigo,
          backgroundColor: Colors.transparent,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: null),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                ),
                label: null),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: null)
          ],
        ),
        tabBuilder: (BuildContext context, int index) {
          switch (index) {
            case 0:
              return CupertinoTabView(
                builder: (BuildContext context) => HomeTrips(),
              );
            case 1:
              return CupertinoTabView(
                builder: (BuildContext context) => SearchTrips(),
              );
            case 2:
              return CupertinoTabView(
                builder: (BuildContext context) => ProfileTrips(),
              );
            default:
              return CupertinoTabView(
                builder: (BuildContext context) => HomeTrips(),
              );
          }
        },
      ),
    );
  }
}

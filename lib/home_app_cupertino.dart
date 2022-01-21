import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_android_cupertino_style/screems/home.dart';
import 'package:flutter_android_cupertino_style/screems/profile.dart';
import 'package:flutter_android_cupertino_style/screems/search.dart';
import 'package:flutter_android_cupertino_style/screems/segmented_views.dart';

//Home etilo cupertino en android
class HomeAppCupertino extends StatelessWidget {
  const HomeAppCupertino({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CupertinoTabScaffold(
            tabBar: CupertinoTabBar(
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home, color: Colors.indigo), label: ""),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search, color: Colors.indigo), label: ""),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person, color: Colors.indigo), label: ""),
                BottomNavigationBarItem(
                    icon: Icon(Icons.web, color: Colors.indigo), label: ""),
              ],
            ),
            tabBuilder: (BuildContext contex, int index) {
              switch (index) {
                case 1: //seacrh screem
                  return CupertinoTabView(
                      builder: (context) => const Center(child: Search()));
                case 2: // profile screem
                  return CupertinoTabView(
                      builder: (context) => const Center(child: Profile()));
                case 3:
               return CupertinoTabView(
                      builder: (context) => const Center(child: SegmentedViews()));


                case 0: //default an home screem
                default:
                  return CupertinoTabView(
                      builder: (context) => Center(
                          child: CupertinoPageScaffold(
                              navigationBar: CupertinoNavigationBar(
                                // Try removing opacity to observe the lack of a blur effect and of sliding content.
                                backgroundColor:
                                    CupertinoColors.systemGrey.withOpacity(0.5),
                                middle: const Text('Cupertino style'),
                              ),
                              child: const Home())));
              }
            }));
  }
}

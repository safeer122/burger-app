import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:my_burger_app/home.dart';
class Bottomnavigation extends StatefulWidget {
  const Bottomnavigation({super.key});

  @override
  State<Bottomnavigation> createState() => _BottomnavigationState();
}
int _currentIndex=0;
final screens=[Homepage(),Text("me"),Text("me"),Text("me")];
class _BottomnavigationState extends State<Bottomnavigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,

        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedItemColor: Color(0xffEF2A39),
        backgroundColor: Color(0xffF7F7F7),
        selectedFontSize: 1,
        unselectedFontSize: 1,
        iconSize: 29,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              label: "_",
              icon:Icon(Icons.home_outlined,color: Color(0xff3C2F2F),),
              activeIcon:Icon(Icons.home,color:Color(0xffEF2A39),),

          ),
          BottomNavigationBarItem(
              label: "_",
              icon: Icon(Icons.person_outline_outlined,color: Color(0xff3C2F2F),),
              activeIcon: Icon(Icons.person,color: Color(0xffEF2A39),),
          ),
          BottomNavigationBarItem(
              label: "_",
              icon:Icon(Icons.message_outlined,color: Color(0xff3C2F2F),),
              activeIcon:Icon(Icons.message_rounded,color: Color(0xffEF2A39),),
          ),
          BottomNavigationBarItem(
              label: "_",
              icon: Icon(Icons.favorite_border_outlined,color: Color(0xff3C2F2F),),
              activeIcon:Icon(Icons.favorite,color: Color(0xffEF2A39),),
          ),
        ],
        onTap: (index){
          setState(() {
            _currentIndex =index;
          });
        },
      ), body: screens[_currentIndex],

    );
  }
}

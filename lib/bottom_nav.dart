//import 'package:cookiesapp/home.dart';
// import 'package:cookiesapp/feed_page.dart';
// import 'package:cookiesapp/page2.dart';
// import 'package:cookiesapp/page3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'main.dart';

const Color bottomNavBgColor = Color(0xFFC28EF2);
//int myCurrentIndex = 0;
//int _currentIndex = 0;
//List pages = [ThirdPage(), FeedPage(), ThirdPage(), SecondPage(), ThirdPage()];

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  List<Widget> body = [
    Image.asset('assets/home.png'),
    Image.asset('assets/feed.png'),
    Image.asset('assets/plus.png'),
    Image.asset('assets/crown.png'),
    Image.asset('assets/profile.png')
  ];

  @override
  Widget build(BuildContext context) {
    return
        //color: Color.fromRGBO(194, 142, 242, 1),
        BottomNavigationBar(
            currentIndex: _currentIndex,
            
            backgroundColor: Color.fromRGBO(194, 142, 242, 1),
            selectedItemColor: Color.fromRGBO(60, 15, 92, 1),
            unselectedItemColor: Color.fromRGBO(217, 186, 248, 1),
            //currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
              _navigateToPage(context, index);
            },
            items: [
          buildBottomNavigationBarItem('assets/home.png', 'home', 0),
          buildBottomNavigationBarItem('assets/feed.png', 'feed', 1),
          buildBottomNavigationBarItem('assets/plus.png', 'add', 2),
          buildBottomNavigationBarItem('assets/crown.png', 'crown', 3),
          buildBottomNavigationBarItem('assets/profile.png', 'profile', 4),
        ]);

    //body: pages[myCurrentIndex],
  }

  void _navigateToPage(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.pushReplacementNamed(context, '/home');
        break;
      case 1:
        Navigator.pushReplacementNamed(context, '/feed');

        break;
      case 2:
        Navigator.pushReplacementNamed(context, '/add');
        break;
      case 3:
        Navigator.pushReplacementNamed(context, '/crown');
        break;
      case 4:
        Navigator.pushReplacementNamed(context, '/profile');
        break;
      default:
        break;
    }
  }

  BottomNavigationBarItem buildBottomNavigationBarItem(
    String iconPath,
    String label,
    int index,
  ) {
    return BottomNavigationBarItem(
      icon: Stack(
        children: [
          Image.asset(
            iconPath,
            width: 24, // Adjust size as needed
            height: 24,
            color: _currentIndex == index
                ? Color.fromRGBO(60, 15, 92, 1)
                : Color.fromRGBO(217, 186, 248, 1),
          ),
          if (_currentIndex == index)
            Positioned(
              top: 20,
              right: 8,
              child: Container(
                width: 6,
                height: 6,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red, // You can change the color here
                ),
              ),
            ),
        ],
      ),
      label: '',
    );
  }
}

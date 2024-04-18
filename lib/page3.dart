
import 'package:cookiesapp/bottom_nav.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

const Color bottomNavBgColor = Color(0xFFC28EF2);
//int myCurrentIndex = 0;

//List pages = [FeedPage(), FeedPage(), ThirdPage(), SecondPage(), ThirdPage()];

// ignore: must_be_immutable
class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  //int _currentIndex = 0;
  // List<Widget> body = [
  //   Image.asset('assets/home.png'),
  //   Image.asset('assets/feed.png'),
  //   Image.asset('assets/plus.png'),
  //   Image.asset('assets/crown.png'),
  //   Image.asset('assets/profile.png')
  // ];

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromRGBO(243, 234, 253, 1),
      appBar: AppBar(
        // elevation: 0,
        backgroundColor: Color.fromRGBO(243, 234, 253, 1),
        leading: Padding(
          padding: const EdgeInsets.only(left: 27.0),
          child: IconButton(
            icon: Image.asset(
              'assets/menu.png',
              semanticLabel: 'home',
              width: 140,
              height: 140,
            ),
            onPressed: () {},
          ),
        ),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 27),
              child: IconButton(
                icon: Icon(
                  Icons.notifications,
                  color: Color.fromRGBO(60, 15, 92, 1), // Set icon color
                  size: 22, // Set icon size
                ),
                onPressed: () {},
              )),
        ],
      ),
      body: Stack(
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 37),
                      child: Text(
                        'Hello',
                        style: GoogleFonts.quicksand(
                          color: Color.fromRGBO(79, 33, 112, 1),
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(width: 10),
                        Padding(
                          padding: const EdgeInsets.only(left: 189.0),
                          child: Container(
                              width: 84,
                              height: 29,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(108, 44, 157, 1),
                                borderRadius: BorderRadius.circular(17),
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      "300",
                                      style: GoogleFonts.quicksand(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 1,
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Image.asset(
                                      'assets/plus_icon.png',
                                    ),
                                    iconSize: 53,
                                    color: Color.fromRGBO(243, 234, 253, 1),
                                  )
                                ],
                              )
                              // icon:Icon(icons.)
                              ),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 37.0),
                  child: Text(
                    "John Doe",
                    style: GoogleFonts.quicksand(
                      color: Color.fromRGBO(79, 33, 112, 1),
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 37.0),
                  child: Container(
                    width: 331,
                    height: 147,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(194, 142, 242, 1),
                        borderRadius: BorderRadius.circular(8)),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0, left: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Tasted something today?",
                            style: GoogleFonts.quicksand(
                              color: Color.fromRGBO(79, 33, 112, 1),
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: Row(
                              children: [
                                Container(
                                  width: 5, // Adjust the size of the dot
                                  height: 5,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color.fromRGBO(79, 33, 112, 1)
                                      // Color of the dot
                                      ),
                                ),
                                SizedBox(
                                    width:
                                        8), // Adjust the space between the dot and text
                                Text('Review ',
                                    style: GoogleFonts.quicksand(
                                      color: Color.fromRGBO(79, 33, 112, 1),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    )),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: Row(
                              children: [
                                Container(
                                  width: 5, // Adjust the size of the dot
                                  height: 5,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color.fromRGBO(79, 33, 112, 1)
                                      // Color of the dot
                                      ),
                                ),
                                SizedBox(
                                    width:
                                        8), // Adjust the space between the dot and text
                                Text('Post',
                                    style: GoogleFonts.quicksand(
                                      color: Color.fromRGBO(79, 33, 112, 1),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    )),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: Row(
                              children: [
                                Container(
                                  width: 5, // Adjust the size of the dot
                                  height: 5,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color.fromRGBO(79, 33, 112, 1)
                                      // Color of the dot
                                      ),
                                ),
                                SizedBox(
                                    width:
                                        8), // Adjust the space between the dot and text
                                Text('Earn Rewards',
                                    style: GoogleFonts.quicksand(
                                      color: Color.fromRGBO(79, 33, 112, 1),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    )),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0, left: 12),
                            child: Container(
                              width: 80,
                              height: 26,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(60, 15, 92, 1),
                                  borderRadius: BorderRadius.circular(7)),
                              child: Center(
                                child: Text(
                                  "Yes",
                                  style: GoogleFonts.quicksand(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),

                      // child: SizedBox(height: 2),
                    ),
                    //alignment: Alignment.topRight,
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 37.0),
                  child: Text(
                    "My Snack History",
                    style: GoogleFonts.quicksand(
                      color: Color.fromRGBO(108, 44, 157, 1),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),

                //Text("asdfgh"),
                CupertinoButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(left: 27.0),
                    child: Container(
                      // margin: EdgeInsets.only(top: size.height / 100 * 15),
                      height: 63,
                      width: 338,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color.fromRGBO(194, 142, 242, 1),
                      ),
                      child: ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: Padding(
                          padding: const EdgeInsets.only(bottom: 5.0, left: 12),
                          child: Container(
                            height: 53,
                            width: 33,
                            child: Image.asset('assets/cake.png'),
                          ),
                        ),
                        title: Text(
                          "Dairy Milk Silk - Almond",
                          style: GoogleFonts.quicksand(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(bottom: 14.0),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/Heart.png',
                                width: 14,
                                height: 14,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                "1.2K",
                                style: GoogleFonts.quicksand(
                                  color: Color.fromRGBO(60, 15, 92, 1),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Image.asset('assets/Bubble.png'),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "981",
                                style: GoogleFonts.quicksand(
                                  color: Color.fromRGBO(60, 15, 92, 1),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                              // IconButton(
                              //     onPressed: () {},
                              //     icon: Image.asset('assets/Heart.png'))
                            ],
                          ),
                        ),
                        trailing: Padding(
                          padding: const EdgeInsets.only(right: 14.0),
                          child: Text(
                            "23/09/2023",
                            style: GoogleFonts.quicksand(
                              color: Color.fromRGBO(243, 234, 253, 1),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                CupertinoButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(left: 27.0),
                    child: Container(
                      // margin: EdgeInsets.only(top: size.height / 100 * 15),
                      height: 63,
                      width: 338,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color.fromRGBO(194, 142, 242, 1),
                      ),
                      child: ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: Padding(
                          padding: const EdgeInsets.only(bottom: 5.0, left: 12),
                          child: Container(
                            height: 53,
                            width: 33,
                            child: Image.asset('assets/cake.png'),
                          ),
                        ),
                        title: Text(
                          "Dairy Milk Silk - Almond",
                          style: GoogleFonts.quicksand(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(bottom: 14.0),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/Heart.png',
                                width: 14,
                                height: 14,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                "1.2K",
                                style: GoogleFonts.quicksand(
                                  color: Color.fromRGBO(60, 15, 92, 1),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Image.asset('assets/Bubble.png'),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "981",
                                style: GoogleFonts.quicksand(
                                  color: Color.fromRGBO(60, 15, 92, 1),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                              // IconButton(
                              //     onPressed: () {},
                              //     icon: Image.asset('assets/Heart.png'))
                            ],
                          ),
                        ),
                        trailing: Padding(
                          padding: const EdgeInsets.only(right: 14.0),
                          child: Text(
                            "23/09/2023",
                            style: GoogleFonts.quicksand(
                              color: Color.fromRGBO(243, 234, 253, 1),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                //3
                CupertinoButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(left: 27.0),
                    child: Container(
                      // margin: EdgeInsets.only(top: size.height / 100 * 15),
                      height: 63,
                      width: 338,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color.fromRGBO(194, 142, 242, 1),
                      ),
                      child: ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: Padding(
                          padding: const EdgeInsets.only(bottom: 5.0, left: 12),
                          child: Container(
                            height: 53,
                            width: 33,
                            child: Image.asset('assets/cake.png'),
                          ),
                        ),
                        title: Text(
                          "Dairy Milk Silk - Almond",
                          style: GoogleFonts.quicksand(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(bottom: 14.0),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/Heart.png',
                                width: 14,
                                height: 14,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                "1.2K",
                                style: GoogleFonts.quicksand(
                                  color: Color.fromRGBO(60, 15, 92, 1),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Image.asset('assets/Bubble.png'),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "981",
                                style: GoogleFonts.quicksand(
                                  color: Color.fromRGBO(60, 15, 92, 1),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                              // IconButton(
                              //     onPressed: () {},
                              //     icon: Image.asset('assets/Heart.png'))
                            ],
                          ),
                        ),
                        trailing: Padding(
                          padding: const EdgeInsets.only(right: 14.0),
                          child: Text(
                            "23/09/2023",
                            style: GoogleFonts.quicksand(
                              color: Color.fromRGBO(243, 234, 253, 1),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              top: 227,
              left: 273,
              child: Image.asset(
                'assets/girl.png',
                width: 119,
                height: 119,
              )),
        ],
      ),
      bottomNavigationBar: Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.transparent,
                blurRadius: 30,
                //offset: Offset(0, 20),
              ),
            ],
            borderRadius: BorderRadius.circular(22),
          ),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(32), child: BottomNavBar())),
    );
  }
}

//       bottomNavigationBar: Container(
//         //color: Color.fromRGBO(194, 142, 242, 1),
//         margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//         decoration: BoxDecoration(
//           boxShadow: [
//             BoxShadow(
//               color: Colors.transparent,
//               blurRadius: 30,
//               //offset: Offset(0, 20),
//             ),
//           ],
//           borderRadius: BorderRadius.circular(22),
//         ),
//         child: ClipRRect(
//           borderRadius: BorderRadius.circular(32),
//           child: BottomNavigationBar(
//               // currentIndex: myCurrentIndex,
//               backgroundColor: Color.fromRGBO(194, 142, 242, 1),
//               selectedItemColor: Color.fromRGBO(60, 15, 92, 1),
//               unselectedItemColor: Color.fromRGBO(217, 186, 248, 1),
//               currentIndex: _currentIndex,
//               onTap: (index) {
//                 setState(() {
//                   _currentIndex = index;
//                 });
//                 _navigateToPage(index);
//               },
//               items: [
//                 buildBottomNavigationBarItem('assets/home.png', 'home', 0),
//                 buildBottomNavigationBarItem('assets/feed.png', 'feedback', 1),
//                 buildBottomNavigationBarItem('assets/plus.png', 'plus', 2),
//                 buildBottomNavigationBarItem('assets/crown.png', 'king', 3),
//                 buildBottomNavigationBarItem('assets/profile.png', 'pers', 4),
//               ]),
//         ),
//       ),
//     );
//   }

//   void _navigateToPage(int index) {
//     switch (index) {
//       case 0:
//         Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(builder: (context) => ThirdPage()),
//         );
//         break;
//       case 1:
//         Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(builder: (context) => FeedPage()),
//         );

//         break;
//       case 2:
//         Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(builder: (context) => MyPosts()),
//         );
//         break;
//       case 3:
//         Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(builder: (context) => FeedPage()),
//         );
//         break;
//       case 4:
//         Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(builder: (context) => FeedPage()),
//         );
//         break;
//       default:
//         break;
//     }
//   }
// }

// //BOTTOM NAIGATION DOT
// BottomNavigationBarItem buildBottomNavigationBarItem(
//   String iconPath,
//   String label,
//   int index,
// ) {
//   return BottomNavigationBarItem(
//     icon: Stack(
//       children: [
//         Image.asset(
//           iconPath,
//           width: 24, // Adjust size as needed
//           height: 24,
//         ),
//         if (myCurrentIndex == index)
//           Positioned(
//             top: 20,
//             right: 8,
//             child: Container(
//               width: 6,
//               height: 6,
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 color: Colors.black, // You can change the color here
//               ),
//             ),
//           ),
//       ],
//     ),
//     label: '',
//   );
// }

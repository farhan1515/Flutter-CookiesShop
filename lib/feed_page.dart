
import 'package:cookiesapp/bottom_nav.dart';
// import 'package:cookiesapp/page3.dart';
// import 'package:cookiesapp/post_page.dart';
import 'package:cookiesapp/stories.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

const Color bottomNavBgColor = Color(0xFFC28EF2);
//int myCurrentIndex = 0;
//int _currentIndex = 0;

class FeedPage extends StatefulWidget {
  const FeedPage({super.key});

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  //int myCurrentIndex = 0;

  List<Map<String, dynamic>> _stories = [
    {'image': 'assets/Ellipse6.png', 'text': 'John'},
    {'image': 'assets/Ellipse7.png', 'text': 'Ganapathi'},
    {'image': 'assets/Ellipse8.png', 'text': 'Harry'},
    {'image': 'assets/Ellipse9.png', 'text': 'Kiran'},
    {'image': 'assets/Ellipse10.png', 'text': 'Swetha'},
    {'image': 'assets/Ellipse11.png', 'text': 'Meoww'}
  ];
  @override
  Widget build(BuildContext context) {
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
        //index: _currentIndex,
        children: [
          Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 37,
                    ),
                    child: Text(
                      "Feed",
                      style: GoogleFonts.quicksand(
                        color: Color.fromRGBO(79, 33, 112, 1),
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(width: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 165.0),
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

              // CIRCLE STORIES

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: ListView.builder(
                      itemCount: _stories.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return MyStories(
                          child: Image.asset(
                            _stories[index]['image'],
                            fit: BoxFit.contain,
                          ),
                          text: Text(
                            _stories[index]['text'], // Use text from data
                            style: TextStyle(fontSize: 12),
                          ),
                        );
                      }),
                ),
              ),
              //POSTS CARDS

              Padding(
                padding: const EdgeInsets.only(bottom: 53.0),
                child: Container(
                  height: 207,
                  width: 285,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: Container(
                          margin: EdgeInsets.only(left: 26),
                          height: 36,
                          width: 36,
                          child: Image.asset(
                            'assets/Ellipse7.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        title: Text(
                          "Jennifer Lopez",
                          style: GoogleFonts.quicksand(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        subtitle: Text(
                          "1 min ago",
                          style: GoogleFonts.quicksand(
                            color: Color.fromRGBO(117, 117, 117, 1),
                            fontSize: 8,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Text(
                        "My stress reliever at the end of the day 💯",
                        style: GoogleFonts.quicksand(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Container(
                        height: 88,
                        width: 231,
                        child: Image.asset(
                          'assets/images/family.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 29.0, top: 4),
                        child: Row(
                          children: [
                            Container(
                              height: 12, // Specify the desired height
                              width: 14, // Specify the desired width
                              child: Image.asset(
                                'assets/images/heart.png',
                                fit: BoxFit.contain, // Adjust the fit as needed
                              ),
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              "2.2k",
                              style: GoogleFonts.quicksand(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Container(
                              height: 12, // Specify the desired height
                              width: 14, // Specify the desired width
                              child: Image.asset(
                                'assets/images/comment.png',
                                fit: BoxFit.contain, // Adjust the fit as needed
                              ),
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              "991",
                              style: GoogleFonts.quicksand(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Container(
                              height: 12, // Specify the desired height
                              width: 14, // Specify the desired width
                              child: Image.asset(
                                'assets/images/share.png',
                                fit: BoxFit.contain, // Adjust the fit as needed
                              ),
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              "560",
                              style: GoogleFonts.quicksand(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              width: 85,
                            ),
                            Icon(Icons.more_horiz)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),

              // 2 post

              Padding(
                padding: const EdgeInsets.only(bottom: 63.0),
                child: Container(
                  height: 207,
                  width: 285,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: Container(
                          margin: EdgeInsets.only(left: 26),
                          height: 36,
                          width: 36,
                          child: Image.asset(
                            'assets/Ellipse7.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        title: Text(
                          "Jennifer Lopez",
                          style: GoogleFonts.quicksand(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        subtitle: Text(
                          "1 min ago",
                          style: GoogleFonts.quicksand(
                            color: Color.fromRGBO(117, 117, 117, 1),
                            fontSize: 8,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Text(
                        "My stress reliever at the end of the day 💯",
                        style: GoogleFonts.quicksand(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Container(
                        height: 88,
                        width: 231,
                        child: Image.asset(
                          'assets/images/family.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 29.0, top: 4),
                        child: Row(
                          children: [
                            Container(
                              height: 12, // Specify the desired height
                              width: 14, // Specify the desired width
                              child: Image.asset(
                                'assets/images/heart.png',
                                fit: BoxFit.contain, // Adjust the fit as needed
                              ),
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              "2.2k",
                              style: GoogleFonts.quicksand(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Container(
                              height: 12, // Specify the desired height
                              width: 14, // Specify the desired width
                              child: Image.asset(
                                'assets/images/comment.png',
                                fit: BoxFit.contain, // Adjust the fit as needed
                              ),
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              "991",
                              style: GoogleFonts.quicksand(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Container(
                              height: 12, // Specify the desired height
                              width: 14, // Specify the desired width
                              child: Image.asset(
                                'assets/images/share.png',
                                fit: BoxFit.contain, // Adjust the fit as needed
                              ),
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              "560",
                              style: GoogleFonts.quicksand(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              width: 85,
                            ),
                            Icon(Icons.more_horiz)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
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
              borderRadius: BorderRadius.circular(32),
              child:BottomNavBar()
      )
    ),);
  }
}
      // bottomNavigationBar: BottomNavBar(),

//       bottomNavigationBar: Container(
//           //color: Color.fromRGBO(194, 142, 242, 1),
//           margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//           decoration: BoxDecoration(
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.transparent,
//                 blurRadius: 30,
//                 //offset: Offset(0, 20),
//               ),
//             ],
//             borderRadius: BorderRadius.circular(22),
//           ),
//           child: ClipRRect(
//               borderRadius: BorderRadius.circular(32),
//               child: BottomNavigationBar(
//                   //currentIndex: myCurrentIndex,
//                   backgroundColor: Color.fromRGBO(194, 142, 242, 1),
//                   selectedItemColor: Color.fromRGBO(60, 15, 92, 1),
//                   unselectedItemColor: Color.fromRGBO(217, 186, 248, 1),
//                   currentIndex: _currentIndex,
//                   onTap: (index) {
//                     setState(() {
//                       _currentIndex = index;
//                     });
//                     _navigateToPage(index);
//                   },
//                   items: [
//                     buildBottomNavigationBarItem('assets/home.png', 'home', 0),
//                     buildBottomNavigationBarItem(
//                         'assets/feed.png', 'feedback', 1),
//                     buildBottomNavigationBarItem('assets/plus.png', 'plus', 2),
//                     buildBottomNavigationBarItem('assets/crown.png', 'king', 3),
//                     buildBottomNavigationBarItem(
//                         'assets/profile.png', 'pers', 4),
//                   ]))),
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
//                 color: Colors.red, // You can change the color here
//               ),
//             ),
//           ),
//       ],
//     ),
//     label: '',
//   );
// }

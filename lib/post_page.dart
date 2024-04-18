import 'package:cookiesapp/bottom_nav.dart';
import 'package:cookiesapp/feedback.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyPosts extends StatelessWidget {
  const MyPosts({super.key});
  void handleChange(int index) {
    // Handle the change here, for example, print the index
    print('Selected index: $index');
  }

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
      body: Container(
        width: 373,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 36.0),
              child: Text(
                "New post",
                style: GoogleFonts.quicksand(
                  color: Color.fromRGBO(79, 33, 112, 1),
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 36.0),
              child: Container(
                height: 155,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(234, 217, 251, 1),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'assets/images/scanner.png',
                      // Adjust width and height as needed
                      width: 200,
                      height: 200,
                    ),
                    Positioned(
                      // Adjust the position of the second image relative to the first image
                      top: 30,
                      left: 120,
                      child: Image.asset(
                        'assets/images/scan.png',
                        // Adjust width and height as needed
                        width: 100,
                        height: 100,
                      ),
                    ),
                    Positioned(
                        top: 105,
                        child: Text(
                          "Scan Choco QR",
                          style: GoogleFonts.quicksand(
                            color: Color.fromRGBO(107, 107, 107, 1),
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 9,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 36.0),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/location.png',
                    height: 24,
                  ),
                  Text('Kukatpally, Hyderabad')
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 38.0),
              child: Text(
                "Rate your Experience: ",
                style: GoogleFonts.quicksand(
                  color: Color.fromRGBO(32, 32, 32, 1),
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: EmojiFeedback(
                  key: ValueKey('unique_key_for_emoji_feedback'),
                  onChange: handleChange),
            ),
            // SizedBox(
            //   height: 10,
            // ),
            Padding(
              padding: const EdgeInsets.only(left: 36.0),
              child: Text(
                'Caption: ',
                style: GoogleFonts.quicksand(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 36.0),
              child: Container(
                width: 253,
                height: 109,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(
                      234, 217, 251, 1), // Change color code as needed
                  borderRadius: BorderRadius.circular(
                      12), // Adjust border radius as needed
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Type a Caption', // Replace with your hint text
                      border: InputBorder.none,
                    ),
                    style: TextStyle(
                      color: Colors.white, // Change text color as needed
                    ),
                  ),
                ),
              ),
            ),

            //FEEDBACK FIELD
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 36.0),
              child: Text(
                'Feedback: ',
                style: GoogleFonts.quicksand(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 36.0),
              child: Container(
                width: 253,
                height: 109,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(
                      234, 217, 251, 1), // Change color code as needed
                  borderRadius: BorderRadius.circular(
                      12), // Adjust border radius as needed
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText:
                          'Type a feedback', // Replace with your hint text
                      border: InputBorder.none,
                    ),
                    style: TextStyle(
                      color: Colors.white, // Change text color as needed
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),

      // BOTTOM NAVIGATION BAR

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

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCards extends StatelessWidget {
  const MyCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: ListView(children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 263.0),
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
        ]),
      ),
    );
  }
}

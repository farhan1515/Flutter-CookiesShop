import 'package:cookiesapp/bottom_nav.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Mycrown extends StatelessWidget {
  const Mycrown({super.key});

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
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.only(left: 36.0),
            child: Text(
              "Rewards",
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
              height: 135,
              decoration: BoxDecoration(
                color: Color.fromRGBO(234, 217, 251, 1),
                borderRadius: BorderRadius.circular(14),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 32.0, left: 26),
                    child: Row(
                      children: [
                        Image.asset('assets/images/reward.png'),
                        Text(
                          '400',
                          style: GoogleFonts.quicksand(
                            color: Color.fromRGBO(79, 33, 112, 1),
                            fontSize: 32,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          width: 110,
                        ),
                        Text(
                          'Spent',
                          style: GoogleFonts.quicksand(
                            color: Color.fromRGBO(79, 33, 112, 1),
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 26.0),
                    child: Row(
                      children: [
                        Text(
                          'Rank: 10',
                          style: GoogleFonts.quicksand(
                            color: Color.fromRGBO(79, 33, 112, 1),
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          width: 110,
                        ),
                        Text(
                          '130',
                          style: GoogleFonts.quicksand(
                            color: Color.fromRGBO(79, 33, 112, 1),
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 36.0),
            child: Text(
              'Vouchers',
              style: GoogleFonts.quicksand(
                color: Color.fromRGBO(79, 33, 112, 1),
                fontSize: 34,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            height: 14,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 55.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 96,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(234, 217, 251, 1),
                          borderRadius: BorderRadius.circular(14)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: Image.asset('assets/images/flipkart.png'),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 26.0),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/images/reward.png',
                                  height: 19,
                                  width: 19,
                                ),
                                Text(
                                  '100',
                                  style: GoogleFonts.quicksand(
                                    color: Color.fromRGBO(79, 33, 112, 1),
                                    fontSize: 19,
                                    fontWeight: FontWeight.w600,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 90,
                    ),
                    // 2 container

                    Container(
                      height: 96,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(234, 217, 251, 1),
                          borderRadius: BorderRadius.circular(14)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: Image.asset('assets/images/myntra.png'),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 26.0),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/images/reward.png',
                                  height: 19,
                                  width: 19,
                                ),
                                Text(
                                  '100',
                                  style: GoogleFonts.quicksand(
                                    color: Color.fromRGBO(79, 33, 112, 1),
                                    fontSize: 19,
                                    fontWeight: FontWeight.w600,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),

                // 3 CONTAINERE
                Row(
                  children: [
                    Container(
                      height: 96,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(234, 217, 251, 1),
                          borderRadius: BorderRadius.circular(14)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: Image.asset('assets/images/amazon.png'),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 26.0),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/images/reward.png',
                                  height: 19,
                                  width: 19,
                                ),
                                Text(
                                  '100',
                                  style: GoogleFonts.quicksand(
                                    color: Color.fromRGBO(79, 33, 112, 1),
                                    fontSize: 19,
                                    fontWeight: FontWeight.w600,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 90,
                    ),

                    //4 CONTAINER

                    Container(
                      height: 96,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(234, 217, 251, 1),
                          borderRadius: BorderRadius.circular(14)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: Image.asset(
                              'assets/images/paytm.png',
                              height: 31,
                              width: 31,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 26.0),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/images/reward.png',
                                  height: 19,
                                  width: 19,
                                ),
                                Text(
                                  '100',
                                  style: GoogleFonts.quicksand(
                                    color: Color.fromRGBO(79, 33, 112, 1),
                                    fontSize: 19,
                                    fontWeight: FontWeight.w600,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ]),
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

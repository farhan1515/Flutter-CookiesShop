import 'package:cookiesapp/page3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      height: 54,
      width: 59,
      margin: EdgeInsets.symmetric(horizontal: 5),
      textStyle: TextStyle(fontSize: 22, color: Colors.black),
      decoration: BoxDecoration(
          color: Color.fromRGBO(243, 234, 253, 1),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: Colors.transparent,
          )),
    );
    return Scaffold(
      //backgroundColor: Color.fromRGBO(60, 15, 92, 1),
      backgroundColor: Color.fromRGBO(108, 44, 157, 1),

      body: Container(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 221, left: 65.0),
              child: Text(
                'Verify',
                style: GoogleFonts.quicksand(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 44, left: 28),
              child: Pinput(
                length: 5,
                defaultPinTheme: defaultPinTheme,
                focusedPinTheme: defaultPinTheme.copyWith(
                    decoration: defaultPinTheme.decoration!
                        .copyWith(border: Border.all(color: Colors.green))),
                onCompleted: (pin) => debugPrint(pin),
              ),
            ),

            //BUTTON

            Padding(
              padding: const EdgeInsets.only(top: 47, left: 127),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ThirdPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(60, 15, 92, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  minimumSize: Size(120, 50),
                ),
                child: Text(
                  'Submit',
                  style: TextStyle(
                      fontSize: 18, color: Color.fromRGBO(255, 255, 255, 1)),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 72, left: 45),
              child: Text(
                'Tips',
                style: GoogleFonts.quicksand(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 55),
              child: Row(
                children: [
                  Container(
                    width: 8, // Adjust the size of the dot
                    height: 8,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(255, 255, 255, 1)
                        // Color of the dot
                        ),
                  ),
                  SizedBox(
                      width: 8), // Adjust the space between the dot and text
                  Text('Be on Top of Reward Board of your Location',
                      style: GoogleFonts.quicksand(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
      
      //backgroundColor: Color.fromRGBO(108, 44, 157, 1),
    );
  }
}

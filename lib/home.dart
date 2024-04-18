import 'package:cookiesapp/page2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(108, 44, 157, 1),
      body: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 221, left: 45.0),
              child: Text(
                'Log In',
                style: GoogleFonts.quicksand(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Container(
                width: 290,
                height: 54,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, left: 25),
                  child: IntlPhoneField(
                    dropdownTextStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(79, 33, 112, 1)),
                    keyboardType: TextInputType.phone,
                    focusNode: FocusNode(),
                    decoration: InputDecoration(
                        hintText: '1234567890',
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(217, 186, 248, 1)),
                        contentPadding: EdgeInsets.only(top: 4, left: 0),
                        border: InputBorder.none),
                    dropdownIconPosition: IconPosition.trailing,
                    dropdownIcon: Icon(
                      Icons.arrow_drop_down,
                      color: Color.fromRGBO(79, 33, 112, 1),
                    ),
                    initialCountryCode: 'IN',
                    onChanged: (phone) {
                      print(phone.completeNumber);
                    },
                  ),
                ),
              ),
            ),
            // SizedBox(
            //   height: 30,
            // ),

            Padding(
              padding: const EdgeInsets.only(top: 47.0, left: 117),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(60, 15, 92, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
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
              padding: const EdgeInsets.only(left: 65),
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
                  Text('Earn Reward points for every purchase',
                      style: GoogleFonts.quicksand(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
      
    );
  }
}

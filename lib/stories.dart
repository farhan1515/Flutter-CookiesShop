import 'package:flutter/cupertino.dart';

class MyStories extends StatelessWidget {
  final Widget child;
  final Widget text;
  MyStories({required this.child, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Color.fromRGBO(132, 132, 132, 1), // Border color
                width: 2, // Border width
              ),
            ),
            child: child,
          ),
          SizedBox(height: 8),
          text,
        ],
      ),
    );
  }
}

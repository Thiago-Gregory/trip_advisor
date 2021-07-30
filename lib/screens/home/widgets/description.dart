import 'package:flutter/material.dart';
import 'package:trip_advisor/style.dart';

class Description extends StatelessWidget {
  final String title;
  final String description;

  Description({
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Description title
        Text(
          this.title,
          style: TextStyle(
            color: textGreen,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.justify,
        ),
        SizedBox(
          height: 20,
        ),
        //Description text
        Text(
          this.description,
          style: TextStyle(
            
          ),
          textAlign: TextAlign.justify,
        )
      ],
    );
  }
}

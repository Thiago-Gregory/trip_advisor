import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:trip_advisor/models/trip_image.dart';
import 'package:trip_advisor/style.dart';

class Gallery extends StatelessWidget {
  final List<TripImage> gallery;

  Gallery({
    required this.gallery,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Fotos",
          style: TextStyle(
            color: textGreen,
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),
        ),
        Container(
          //Create a GridView for location photos
          child: GridView.builder(
            padding: EdgeInsets.only(
              top: 15,
            ),
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 0.8,
              crossAxisSpacing: 15.0,
            ),
            itemCount: gallery.length,
            itemBuilder: (context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.asset(
                    gallery.elementAt(index).image, 
                    fit: BoxFit.fill
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    gallery.elementAt(index).description,
                    style: TextStyle(
                      fontSize: 10
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}

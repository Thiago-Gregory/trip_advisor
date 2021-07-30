import 'package:flutter/material.dart';
import 'package:trip_advisor/models/location.dart';
import 'package:trip_advisor/style.dart';

class Details extends StatelessWidget {
  final Location location;

  Details({
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //Map icon and city name and country
        Container(
          child: Row(
            children: [
              Icon(
                Icons.location_pin,
                size: 20,
                color: grayTheme,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "${location.city} - ${location.country}",
                style: TextStyle(
                  color: grayTheme,
                  fontSize: 16,
                  fontWeight: FontWeight.w500
                ),
              ),
            ],
          ),
        ),
        //Stars rate and number of reviews
        Container(
          child: Row(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: List.generate(5, (index) => 
                  //This create two star icons one over another
                  Stack(
                    children: [
                      //Background star icon to paint transparent half of a star_half Icon
                      Container(
                          child: Icon(Icons.star_rounded, color: grayStar)
                      ),
                      //Proper star icon according to location starRate
                      Align(
                        child: Icon(
                          //Create a star_half Icon if there is a decimal value of location starRate
                          (location.starsRate - index >= 1 || location.starsRate - index < 0) ? Icons.star_rounded : Icons.star_half_rounded,
                          //Set transparent color for the star Icon after the last possible location starRate value
                          color: index.toInt() < location.starsRate ? orangeIcon : Colors.transparent,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "${location.numberOfReviews} avaliações",
                style: TextStyle(
                  color: grayTheme
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

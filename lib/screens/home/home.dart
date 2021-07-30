import 'package:flutter/material.dart';
import 'package:trip_advisor/models/location.dart';
import 'package:trip_advisor/models/trip_image.dart';
import 'package:trip_advisor/screens/home/widgets/description.dart';
import 'package:trip_advisor/screens/home/widgets/details.dart';
import 'package:trip_advisor/screens/home/widgets/gallery.dart';

class Home extends StatelessWidget {
  final location = Location(
    banner: "assets/images/banner.jpg", 
    city: "Paris", 
    country: "França", 
    starsRate: 3.5, 
    numberOfReviews: 32, 
    title: "Conheça as Maravilhas da Capital Francesa", 
    description: "É impossível não se render aos encantos de Paris, a bela capital francesa e destino turístico frequentado por milhões de pessoas todos os anos. Vibrante, charmosa, romântica, divertida, além de berço da cultura e da arte, a Cidade Luz, como é chamada, possui uma infindável lista de qualidades.", 
    gallery: [
      TripImage(
        image: "assets/images/foto_1.jpg",
        description: "Musée d'Orsay",
      ),
      TripImage(
        image: "assets/images/foto_2.jpg",
        description: "Catedral de Notre-Dame",
      ),
      TripImage(
        image: "assets/images/foto_3.jpg",
        description: "Sainte-Chapelle",
      ),
      TripImage(
        image: "assets/images/foto_4.jpg",
        description: "Museu do Louvre",
      ),
      TripImage(
        image: "assets/images/foto_5.jpg",
        description: "Arco do Triunfo",
      ),
      TripImage(
        image: "assets/images/foto_6.jpg",
        description: "Palais Garnier",
      ),
      TripImage(
        image: "assets/images/foto_7.jpg",
        description: "Jardim de Luxemburgo",
      ),
      TripImage(
        image: "assets/images/foto_8.jpg",
        description: "Seine River",
      ),
      TripImage(
        image: "assets/images/foto_9.jpg",
        description: "Torre Eiffel",
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //Create location banner
            Image.asset(
              location.banner,
              fit: BoxFit.fill
            ),
            Padding(
              padding: const
              EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 15,
              ),
              child: Column(
                children: [
                  SizedBox(height: 10),

                  //Create location details
                  Details(
                    location: this.location
                  ),

                  SizedBox(height: 20),

                  //Create locaiton descriptio
                  Description(
                    title: location.title,
                    description: location.description,
                  ),

                  SizedBox(height: 20),

                  //Create location gallery
                  Gallery(
                    gallery: location.gallery
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
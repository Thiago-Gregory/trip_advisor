import 'package:trip_advisor/models/trip_image.dart';

class Location {
  final String banner;
  final String city;
  final String country;
  final double starsRate;
  final int numberOfReviews;
  final String title;
  final String description;
  final List<TripImage> gallery;

  Location({
    required this.banner,
    required this.city,
    required this.country,
    required this.starsRate,
    required this.numberOfReviews,
    required this.title,
    required this.description,
    required this.gallery,
  });
}

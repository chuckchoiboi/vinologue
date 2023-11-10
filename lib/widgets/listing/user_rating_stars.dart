import 'package:flutter/material.dart';

class UserRatingStars extends StatelessWidget {
  final double rating;

  const UserRatingStars(this.rating, {super.key});

  @override
  Widget build(context) {
    int filledStars = rating.floor();
    double remainder = rating - filledStars;

    List<Widget> starWidgets = List.generate(5, (index) {
      if (index >= filledStars) {
        return const Icon(
          Icons.star_border,
          color: Colors.deepPurple,
          size: 20.0,
        );
      } else if (index == filledStars - 1 && remainder > 0.0) {
        return const Icon(
          Icons.star_half,
          color: Colors.deepPurple,
          size: 20.0,
        );
      } else {
        return const Icon(
          Icons.star,
          color: Colors.deepPurple,
          size: 20.0,
        );
      }
    });

    return Row(
      children: starWidgets,
    );
  }
}

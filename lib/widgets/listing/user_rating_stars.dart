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
        );
      } else if (index == filledStars - 1 && remainder > 0.0) {
        return const Icon(
          Icons.star_half,
        );
      } else {
        return const Icon(
          Icons.star,
        );
      }
    });

    return Row(
      children: starWidgets,
    );
  }
}

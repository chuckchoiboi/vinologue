import 'package:flutter/material.dart';

class ListingFilter extends StatelessWidget {
  const ListingFilter({super.key});

  @override
  Widget build(context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('toggle'),
        Text('filter'),
      ],
    );
  }
}

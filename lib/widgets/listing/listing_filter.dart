import 'package:flutter/material.dart';

class ListingFilter extends StatefulWidget {
  const ListingFilter({super.key});

  @override
  State<ListingFilter> createState() => _ListingFilterState();
}

class _ListingFilterState extends State<ListingFilter> {
  bool isToggleOn = true;

  @override
  Widget build(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Switch(
                onChanged: (bool value) {
                  setState(() {
                    isToggleOn = value;
                  });
                },
                value: isToggleOn),
            Text(isToggleOn ? 'Stacked' : 'Row'),
          ],
        ),
        const Text('filter'),
      ],
    );
  }
}

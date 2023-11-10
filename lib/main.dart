import 'package:flutter/material.dart';

import 'package:vinologue/screens/listing_screen.dart';

var kColorScheme = ColorScheme.fromSeed(seedColor: Colors.deepPurple);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData().copyWith(
        useMaterial3: true,
        colorScheme: kColorScheme,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kColorScheme.primaryContainer,
          foregroundColor: kColorScheme.onPrimaryContainer,
        ),
        textTheme: ThemeData().textTheme.copyWith(
              titleLarge: TextStyle(
                fontWeight: FontWeight.bold,
                color: kColorScheme.onPrimaryContainer,
                fontSize: 14,
              ),
              bodyMedium: TextStyle(
                fontWeight: FontWeight.normal,
                color: kColorScheme.onTertiaryContainer,
                fontSize: 12,
              ),
            ),
        cardTheme: const CardTheme().copyWith(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
      ),
      home: const ListingScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

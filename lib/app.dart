import 'package:fast_foods_app/ui/sereens/spalash_screen.dart';
import 'package:flutter/material.dart';

class FastFoodApp extends StatelessWidget {
  const FastFoodApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,

      home: SpalashScreen(),
    );
  }
}
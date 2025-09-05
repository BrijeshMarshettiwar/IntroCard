import 'package:flutter/material.dart';
import 'package:introcard/home_screen.dart';

void main() {
  runApp(const IntroCard());
}

class IntroCard extends StatelessWidget {
  const IntroCard({super.key});

  @override
  Widget build(BuildContext context) {
    return home_screen();
  }
}

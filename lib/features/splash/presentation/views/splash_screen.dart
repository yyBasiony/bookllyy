import 'package:bookly/features/splash/presentation/views/widgets/splash_body.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff100B20),
      body: SplashBody(),
    );
  }
}

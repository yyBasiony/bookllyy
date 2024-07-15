import 'package:bookly/core/utlis/assets.dart';
import 'package:bookly/features/home/presentation/views/widgets/home_body.dart';
import 'package:flutter/material.dart';

import '../../../../home/presentation/views/widgets/home_screen.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    animaton();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Home_Body()), // تأكد من وجود HomeScreen() بالشكل الصحيح
      );
    });
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  void animaton() {
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 3));

    slidingAnimation = Tween<Offset>(begin: Offset(0, 3), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Center(
          child: Container(
            width:180,
            child: Image.asset(
              AssetsData.logo,
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Center(
          child: SlideTransition(
            position: slidingAnimation,
            child: Text(
              "Read Free Books",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}


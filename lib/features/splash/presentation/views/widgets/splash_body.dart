import 'package:bookly/core/utlis/assets.dart';
import 'package:flutter/material.dart';

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
    // TODO: implement initState
    super.initState();
    animaton();
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
            width: 240,

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
                )))
      ],
    );
  }
}

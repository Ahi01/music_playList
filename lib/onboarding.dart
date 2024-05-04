import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:music_playlist/infrastructure/const.dart';
import 'package:music_playlist/infrastructure/styles.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key, this.color});
  final Color? color;

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        globalBackgroundColor: Colors.black,
        scrollPhysics: const BouncingScrollPhysics(),
        pages: [
          PageViewModel(
            titleWidget: Text(
              'Manage your tasks',
              style: TextStyles.textWhite28(),
            ),
            bodyWidget: Text(
              'You can easily manage all of your daily tasks in DoMe for free',
              style: TextStyles.textWhite28(),
              textAlign: TextAlign.center,
            ),
            image: Image.asset(Images.onboarding1),
          ),
          PageViewModel(
            titleWidget: Text(
              'Create daily routine',
              style: TextStyles.textWhite28(),
            ),
            bodyWidget: Text(
              'In Updo  you can create your personalized routine to stay productive',
              style: TextStyles.subtitleText(),
              textAlign: TextAlign.center,
            ),
            image: Image.asset(Images.onboarding2),
          ),
          PageViewModel(
            titleWidget: Text(
              'Organize your tasks',
              style: TextStyles.textWhite28(),
            ),
            bodyWidget: Text(
              'You can organize your daily tasks by adding your tasks into separate categories',
              style: TextStyles.subtitleText(),
              textAlign: TextAlign.center,
            ),
            image: Image.asset(Images.onboarding3),
          ),
        ],
        onDone: () {},
        onSkip: () {},
        showBackButton: true,
        back: Text(
          'BACK',
          style: TextStyles.subtitleText(color: Colors.grey),
        ),
        done: const Text('GET STARTED', style: TextStyle(color: Colors.white)),
        next: const Text('NEXT', style: TextStyle(color: Colors.white)),
        dotsDecorator: DotsDecorator(
            size: const Size.square(10),
            activeSize: const Size(20, 10),
            color: Colors.white24,
            activeColor: Theme.of(context).colorScheme.onBackground,
            spacing: const EdgeInsets.symmetric(horizontal: 3),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            )),
      ),
    );
  }
}

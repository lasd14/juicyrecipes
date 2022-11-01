import 'package:flutter/material.dart';
import 'package:juicy_recipes/presentation/pages/pages.dart';
import 'package:juicy_recipes/presentation/themes/principal_theme.dart';

//Package Dependencies
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => const RegisterPage()),
    );
  }

  Widget _buildImage(String assetName, [double width = 350]) {
    return Image.asset('assets/images/$assetName.png', width: width);
  }

  @override
  Widget build(BuildContext context) {

    const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return Scaffold(
      body: IntroductionScreen(
        globalBackgroundColor: PrincipalTheme.whiteColor,
        onDone:() => _onIntroEnd(context),
        showSkipButton: false,
        skipOrBackFlex: 0,
        nextFlex: 0,
        showBackButton: true,
        //rtl: true, // Display as right-to-left
        back: const Icon(Icons.arrow_back),
        skip: const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600)),
        next: const Icon(Icons.arrow_forward),
        done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
        pages: [
          PageViewModel(
            title: 'Onboarding 1',
            body: 'This is the body for the onboarding1 screen',
            image: _buildImage('onboard1'),
            decoration: pageDecoration
          ),
          PageViewModel(
            title: 'Onboarding 2',
            body: 'This is the body for the onboarding1 screen',
            image: _buildImage('onboard2'),
            decoration: pageDecoration
          ),
          PageViewModel(
            title: 'Onboarding 3',
            body: 'This is the body for the onboarding1 screen',
            image: _buildImage('onboard3'),
            decoration: pageDecoration
          ),
        ],
        
      )
    );
  }
}
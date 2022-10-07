import 'package:flutter/material.dart';
import 'welcomescreen.dart';
import 'constants.dart';

void main() => runApp(const _IntroScreen());

class _IntroScreen extends StatelessWidget{
  const _IntroScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      home: IntroScreen(),
    );
  }
}


class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Hero(
        tag: 'logo',
        child: Center(
          child: SizedBox(
            height : 400,
            width: 400,
            child: Column(
              children: [
                Image.asset("assets/icons/download.png"),
                WelcomeScreen(),
              ],
            ),
          ),
        ),
      ),

    );
  }
}


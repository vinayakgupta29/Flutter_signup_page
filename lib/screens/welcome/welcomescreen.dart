import 'package:flutter/material.dart';
import 'package:signupdemo/constants.dart';
import '../../responsive.dart';
import 'loginandsignupbtn.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
              child: SafeArea(
                child: Responsive(
                  desktop: DesktopWelcomeScreen(),
                  mobile: MobileWelcomeScreen(),
                ),
              ),
            );
  }
}

class DesktopWelcomeScreen extends StatelessWidget{
  const DesktopWelcomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryLightColor,
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              child: Image.asset(Logo,
              height: 100,),
              ),
            const SizedBox(
              height: 100,
            ),
            const SizedBox(
              width: 450,
              child: LoginAndSignupBtn(),
              ),
              ],),
              ),
    );
  }
  
}

class MobileWelcomeScreen extends StatelessWidget {
  const MobileWelcomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryLightColor,
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Hero(
            tag:'logo',
            child: Material(
              color: Colors.transparent,
              child:  Image.asset(Logo,
                  height: 300,
                  width: 200,
                  fit: BoxFit.contain,
                ),
              ),
          ),
          const SizedBox(
            height: 5
          ),
          Row(
            children:  const [
              Spacer(),
              Expanded(
                flex: 8,
                child: LoginAndSignupBtn(),
              ),
              Spacer(),
            ],
          ),
        ],
      ),
    );
  }
}

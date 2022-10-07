import 'package:flutter/material.dart';
import '../../responsive.dart';
import 'loginandsignupbtn.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 200,),
            Image.asset("assets/icons/1.png",
            height: 100 ,),
            const SizedBox(height: 100,),
            SingleChildScrollView(
              child: SafeArea(
                child: Responsive(
                  desktop: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            SizedBox(
                              width: 450,
                              child: LoginAndSignupBtn(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  mobile: const MobileWelcomeScreen(),
                ),
              ),
            ),
          ],
        ),
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
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Material(
            color: Colors.transparent,
            child:  Image.asset("assets/icons/1.png",
                height: 300,
                width: 200,
                fit: BoxFit.contain,
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

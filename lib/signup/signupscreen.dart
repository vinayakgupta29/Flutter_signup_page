import 'package:flutter/material.dart';
import '/constants.dart';
import '/responsive.dart';
import 'signupform.dart';
import 'signupsocial.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: SingleChildScrollView(
          child: Responsive(
            mobile: const MobileSignupScreen(),
            desktop: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      SizedBox(
                        width: 450,
                        child: SignUpForm(),
                      ),
                      SizedBox(height: defaultPadding / 2),
                       SocalSignUp()
                    ],
                  ),
                )
              ],
            ),
          ),
      ),
        ),
    );
  }
}

class MobileSignupScreen extends StatelessWidget {
  const MobileSignupScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: const [
              Spacer(),
              Expanded(
                flex: 8,
                child: SignUpForm(),
              ),
              Spacer(),
            ],
          ),
           const SocalSignUp()
        ],
      ),
    );
  }
}

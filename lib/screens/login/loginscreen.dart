import 'package:flutter/material.dart';
import '/screens/welcome/welcomescreen.dart';
import '/responsive.dart';
import 'loginform.dart';
import '/screens/signup/components/signupsocial.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Responsive(
            mobile:  MobileLoginScreen(),
            desktop: DesktopLoginScreen(),
          ),
        ),
      ),
    );
  }
}

class DesktopLoginScreen extends StatelessWidget{
  const DesktopLoginScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) =>const WelcomeScreen()));},
            icon: const Icon(Icons.arrow_back,
            color: Colors.black87,)
        ),
      ),
      body: Row(
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        SizedBox(
                          width: 450,
                          child: LoginForm(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
    );
  }
}

class MobileLoginScreen extends StatelessWidget {
  const MobileLoginScreen({
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
                child: LoginForm(),
              ),
              Spacer(),
            ],
          ),
          const SocalSignUp(), 
        ],
      ),
    );
  }
}

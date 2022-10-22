import 'package:flutter/material.dart';

import '/components/already_have_acc.dart';
import '../../../constants.dart';
import '/screens/signup/signupscreen.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Form(
        child: Column(
          children: [
            Hero(
              tag: 'logo',
              child: Image.asset(Logo,
              height: 100 ,),
            ),

            const SizedBox(height: 100,),

            TextFormField(
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              cursorColor: kPrimaryColor,
              onSaved: (email) {},
              decoration:  InputDecoration(
                border:OutlineInputBorder(
                 borderRadius: BorderRadius.circular(20),
                 ),
                hintText: "Your email",
                prefixIcon: const Padding(
                  padding: EdgeInsets.all(defaultPadding),
                  child: Icon(Icons.person),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: defaultPadding),
              child: TextFormField(
                textInputAction: TextInputAction.done,
                obscureText: true,
                cursorColor: kPrimaryColor,
                decoration:  InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    ),
                  hintText: "Your password",
                  prefixIcon: const Padding(
                    padding: EdgeInsets.all(defaultPadding),
                    child: Icon(Icons.lock),
                  ),
                ),
              ),
            ),
            const SizedBox(height: defaultPadding),
            Hero(
              tag: "login_btn",
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Login".toUpperCase(),
                ),
              ),
            ),
            const SizedBox(height: defaultPadding),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

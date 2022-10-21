import 'package:flutter/material.dart';

import '/already_have_acc.dart';
import '../../../constants.dart';
import '../../login/loginscreen.dart';
import 'signupscreen.dart';
import 'package:signupdemo/email_field_widget.dart';


class Signupformapp extends StatelessWidget{
  static const String title ='Email Fiels';

  const Signupformapp({Key? key}) : super(key: key);
  @override 
  Widget build(BuildContext context) => const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: title,
    home:  SignUpForm(),
  );
}
class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SignUpFormState createState()=> _SignUpFormState();
}
class _SignUpFormState extends State<SignUpForm>{
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Form(
        key:formKey,
        child: Column(
          children: [
            Image.asset("assets/icons/1.png",
            height: 100 ,),
            const SizedBox(height: 100,),

            EmailFieldWidget(controller: emailController),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: defaultPadding),
              child: TextFormField(
                textInputAction: TextInputAction.done,
                obscureText: true,
                cursorColor: kPrimaryColor,
                decoration:  InputDecoration(
                  hintText: "Your password",
                  border:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  prefixIcon: const Padding(
                    padding: EdgeInsets.all(defaultPadding),
                    child: Icon(Icons.lock),
                  ),
                ),
              ),
            ),
            const SizedBox(height: defaultPadding / 2),
            Hero(
            tag:'singup_btn',
            child: ElevatedButton(
              onPressed: () { },
              style: ElevatedButton.styleFrom(
                  primary: kPrimaryColor, elevation: 0),
              child: Text(
                "Sign Up".toUpperCase()),
            ),
          ),
            const SizedBox(height: defaultPadding),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const LoginScreen();
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

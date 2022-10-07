 import 'package:flutter/material.dart';

 import '/signup/ordivider.dart';
 import '../../../signup/socialicon.dart';

 class SocalSignUp extends StatelessWidget {
   const SocalSignUp({
     Key? key,
   }) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return Column(
       children: [
         const OrDivider(),
         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             IconButton(
               icon: const Image( image:  AssetImage("assets/icons/download.png"),
               ), onPressed: () {  },
             ),
           ],
         ),
      ],
     );
  }
 }
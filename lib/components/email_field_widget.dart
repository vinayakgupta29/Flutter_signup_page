import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class EmailFieldWidget extends StatefulWidget {
  final TextEditingController controller;

   const EmailFieldWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _EmailFieldWidgetState createState() => _EmailFieldWidgetState();
}

class _EmailFieldWidgetState extends State<EmailFieldWidget> {
  bool _isvalid = true;
  @override
  void initState() {
    super.initState();

    widget.controller.addListener(onListen);
  }

  @override
  void dispose() {
    widget.controller.removeListener(onListen);

    super.dispose();
  }

  void onListen() => setState(() {});

  @override
  Widget build(BuildContext context) => TextFormField(
        controller: widget.controller,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          hintText: 'Email',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          prefixIcon: const Icon(Icons.mail),
          suffixIcon: widget.controller.text.isEmpty
              ? Container(width: 0)
              : (_isvalid ? IconButton(
                  icon: const Icon(Icons.check,color: Colors.green,),
                  onPressed: (){}
                ): IconButton(
                  icon: const Icon(Icons.close, color: Colors.red,),
                  onPressed: () => widget.controller.clear(),
                ) )
        ),
        keyboardType: TextInputType.emailAddress,
        autofillHints: const [AutofillHints.email],
        validator: (email) {
          if(email != null && !EmailValidator.validate(email)){
            setState(() {
              _isvalid = false;
            });
            return 'Enter a Valid email';
          }
          else{
            setState(() {
              _isvalid = true;
            });
          }
        }
            
      );
}

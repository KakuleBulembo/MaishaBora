import 'package:flutter/material.dart';
import 'package:maisha_bora/components/text_field_container.dart';

import '../constant.dart';

class RoundedPasswordField extends StatefulWidget {
  const RoundedPasswordField({
    Key? key,
    required this.hintText,
    required this.onTap,
    this.obscureText = true,
  }) : super(key: key);
  final String hintText;
  final VoidCallback onTap;
  final bool obscureText;

  @override
  State<RoundedPasswordField> createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  @override
  Widget build(BuildContext context) {
    return TextFormFieldContainer(
      child: TextFormField(
        obscureText: widget.obscureText,
        decoration: InputDecoration(
          hintText: widget.hintText,
          icon: const Icon(Icons.lock, color: kPrimaryColor),
          suffixIcon: InkWell(
            child:const Icon(Icons.visibility, color: kPrimaryColor),
            onTap: widget.onTap,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
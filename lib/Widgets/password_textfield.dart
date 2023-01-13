import 'package:flutter/material.dart';
import 'package:grocery_plus_app_ui/Providers/password_provider.dart';
import 'package:provider/provider.dart';

class PasswordTextfield extends StatefulWidget {
  const PasswordTextfield({
    super.key,
    required this.controller,
    required this.text,
  });
  final TextEditingController controller;
  final String text;

  @override
  State<PasswordTextfield> createState() => _PasswordTextfieldState();
}

class _PasswordTextfieldState extends State<PasswordTextfield> {
  @override
  Widget build(BuildContext context) {
    final obscure = Provider.of<PasswordProvider>(context).obscure;
    return TextField(
      controller: widget.controller,
      obscureText: obscure,
      maxLines: 1,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: widget.text,
        prefixIcon: Icon(
          Icons.lock,
          color: Colors.grey.shade500,
        ),
        suffixIcon: GestureDetector(
          onTap: () {
            Provider.of<PasswordProvider>(context, listen: false).setObsure();
          },
          child: obscure
              ? Icon(
                  Icons.visibility_off_rounded,
                  color: Colors.grey.shade500,
                )
              : Icon(
                  Icons.visibility,
                  color: Colors.grey.shade500,
                ),
        ),
      ),
    );
  }
}

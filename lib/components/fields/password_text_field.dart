import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PasswordTextField extends StatefulWidget {
  final String label;
  const PasswordTextField({Key? key, required this.label}) : super(key: key);

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool passwordVisible = false;
  String get label => label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          label,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: GoogleFonts.workSans().fontFamily),
        ),
        TextField(
          obscureText: passwordVisible,
          decoration: InputDecoration(
              border: const OutlineInputBorder(),
              suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      passwordVisible = !passwordVisible;
                    });
                  },
                  icon: Icon(passwordVisible
                      ? Icons.visibility
                      : Icons.visibility_off))),
        ),
      ],
    );
  }
}

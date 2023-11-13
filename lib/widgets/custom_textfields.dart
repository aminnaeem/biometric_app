import 'package:flutter/material.dart';

class CustomTextFields extends StatelessWidget {
 final TextEditingController textController;
 final String lblText;
 final String hntText;
 final IconData sfxIcon;
 final bool obsText;

  const CustomTextFields({
    super.key, required this.textController, required this.lblText, required this.hntText, required this.sfxIcon, required this.obsText
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextField(
        controller: textController,
        obscureText: obsText,
        onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
        decoration: InputDecoration(
          labelText: lblText,
          hintText: hntText,
          suffixIcon: Icon(sfxIcon),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            borderSide: BorderSide(
              color: Colors.blue,
            )
          )
        ),
      ),
    );
  }
}
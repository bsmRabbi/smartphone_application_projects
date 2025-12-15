import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final controller, keyboardType, hint, label, errorText, icon, validator;

  const InputField({
    super.key,
    required this.controller,
    required this.keyboardType,
    required this.hint,
    required this.label,
    required this.errorText,
    required this.icon,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType == TextInputType.visiblePassword
            ? TextInputType.visiblePassword
            : keyboardType,
        obscureText: keyboardType == TextInputType.visiblePassword
            ? true
            : false,
        validator: validator,
        decoration: InputDecoration(
          errorText: errorText,
          hintText: hint,
          labelText: label,
          prefixIcon: Icon(icon),

          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(60)),
          ),
        ),
      ),
    );
  }
}

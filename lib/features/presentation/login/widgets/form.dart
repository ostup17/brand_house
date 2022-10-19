import 'package:flutter/material.dart';

import '../../config.dart';

class FormInputs extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;
  const FormInputs({super.key,
    required this.controller,
    required this.hintText
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ColorConfig.borderInput)
          ),
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: ColorConfig.textBlack,)
        ),
      ),
    );
  }
}
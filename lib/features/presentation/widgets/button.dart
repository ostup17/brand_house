import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginButton extends StatelessWidget {
  final double marginTop;
  final String text;
  final Color background;
  final Color border;
  final Color textColor;
  final String navigation;
  LoginButton({required this.background, required this.border, required this.marginTop, required this.text, required this.textColor, required this.navigation});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.go('/$navigation');
      },
      child: Container(
        margin: EdgeInsets.only(top: marginTop),
        height: 56,
        decoration: BoxDecoration(
            border: Border.all(color: border),
            color: background,
            borderRadius: BorderRadius.circular(32)
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(text, style: TextStyle(color: textColor, fontSize: 16, fontWeight: FontWeight.w600),),
        ),
      )
    );
  }
}
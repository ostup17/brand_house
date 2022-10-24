import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../config.dart';

class HeaderLogin extends StatelessWidget {
  final String header;
  final double marginTop;
  final double marginBottom;
  const HeaderLogin({super.key, required this.header, required this.marginTop, required this.marginBottom});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(24.3, marginTop, 24.3, marginBottom),
      child:  Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: () {context.go('/');}, icon: Icon(Icons.keyboard_arrow_left, size: 34, color: ColorConfig.iconLogin,)),
          Text(header, style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500, color: ColorConfig.textBlack),),
          const SizedBox(
            width: 46,
          )
        ],
      ),
    );
  }
}
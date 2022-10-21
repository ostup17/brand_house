import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../config.dart';

class HeaderLogin extends StatelessWidget {
  final String header;
  const HeaderLogin({super.key, required this.header});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24.3, vertical: 50),
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
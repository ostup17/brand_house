import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../config.dart';

class CatalogPlusAppBar extends StatelessWidget {
  final String header;
  const CatalogPlusAppBar({required this.header});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(onPressed: () {context.go('/home');}, icon: Icon(Icons.keyboard_arrow_left, size: 34, color: ColorConfig.iconLogin,)),
      title: Align(
        alignment: Alignment.center,
        child: Container(
          margin: EdgeInsets.only(right: 55),
          child:  Text(header, style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500, color: ColorConfig.textBlack),),
          )
      )
    );
  }
}

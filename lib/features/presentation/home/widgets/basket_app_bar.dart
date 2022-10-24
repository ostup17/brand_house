import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../config.dart';

class AppBarWidgetBasket extends StatelessWidget {
  const AppBarWidgetBasket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(onPressed: () {context.go('/home');}, icon: Icon(Icons.keyboard_arrow_left, size: 34, color: ColorConfig.iconLogin,)),
      title: Align(
        alignment: Alignment.center,
        child: Container(
          margin: EdgeInsets.only(right: 55),
          child:  Text('Корзина', style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500, color: ColorConfig.textBlack),),
          )
      )
    );
  }
}

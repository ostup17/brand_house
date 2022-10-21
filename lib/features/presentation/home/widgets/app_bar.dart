import 'package:flutter/material.dart';

import '../../config.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.menu, color: ColorConfig.iconLogin, size: 30,),
          tooltip: 'Menu Icon',
          onPressed: () {},
        ),
        title: Align(
          alignment: Alignment.center,
          child: Image.asset('assets/images/logo.png'),
        ),
       actions: <Widget>[
          IconButton(onPressed: () {}, icon: Icon(Icons.search, color: ColorConfig.iconLogin, size: 30,))
       ],
    );
  }
}

import 'package:flutter/material.dart';

import '../../config.dart';

class Line extends StatelessWidget {
  const Line({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
            margin: const EdgeInsets.all(0),
            child: Divider(
              height: 2,
              color: ColorConfig.borderInput,
            )
        )
    );
  }
}
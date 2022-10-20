import 'package:brand_house/features/presentation/config.dart';
import 'package:flutter/material.dart';

class MySwitch extends StatefulWidget {
  const MySwitch({super.key});


  @override
  _MySwitchState createState() => _MySwitchState();
}

class _MySwitchState extends State<MySwitch> {
  bool _switchValue = false;
  @override
  Widget build(BuildContext context) {
    return Switch(
        value: _switchValue,
        activeColor: ColorConfig.mySwitch,
        activeTrackColor: ColorConfig.violet,
        onChanged: (bool value) {
          setState(() {
            _switchValue = value;
          });
        }
    );
  }
}
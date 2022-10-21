import 'package:brand_house/features/presentation/widgets/button.dart';
import 'package:brand_house/features/presentation/widgets/form.dart';
import 'package:brand_house/features/presentation/widgets/header.dart';
import 'package:brand_house/features/presentation/widgets/line.dart';
import 'package:flutter/material.dart';

import '../config.dart';
import '../widgets/switch.dart';

class Registration extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  final TextEditingController _loginEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const HeaderLogin(header: 'Регистрация',),
              FormInputs(controller: _loginEditingController, hintText: 'Телефон'),
              LoginButton(background: ColorConfig.violet, border: ColorConfig.violet, marginTop: 32, text: 'Зарегистрироваться', textColor: Colors.white, navigation: 'test',),
              Row(
                children: [
                  const SizedBox(
                      height: 80,
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: MySwitch(),
                      )
                  ),
                  SizedBox(
                    width: 268,
                    child: RichText(
                      text: TextSpan(
                        text: 'Я соглашаюсь с', style: TextStyle(color: ColorConfig.textBlack, fontSize: 15, fontWeight: FontWeight.w500),
                        children: [
                          TextSpan(
                            text: ' словиями пользовательского соглашения', style: TextStyle(color: ColorConfig.textPromptRegistration, fontSize: 15, fontWeight: FontWeight.w500, decoration: TextDecoration.underline, decorationColor: ColorConfig.textPromptRegistration)
                          ),
                          TextSpan(
                            text: ' и', style: TextStyle(color: ColorConfig.textBlack, fontSize: 15, fontWeight: FontWeight.w500)
                          ),
                          TextSpan(
                              text: ' обработки персональных данных', style: TextStyle(color: ColorConfig.textPromptRegistration, fontSize: 15, fontWeight: FontWeight.w500, decoration: TextDecoration.underline, decorationColor: ColorConfig.textPromptRegistration)
                          )
                        ]
                      )

                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 36),
                child: Row(
                  children: [
                    const Line(),
                    Container(
                      margin: const
                      EdgeInsets.symmetric(horizontal: 6),
                      child: Text('или', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15, color: ColorConfig.textPrompt),),
                    ),
                    const Line(),
                  ],
                ),
              ),
              LoginButton(background: Colors.white, border: ColorConfig.violet, marginTop: 20, text: 'Войти', textColor: ColorConfig.violet, navigation: 'home',)
            ],
          ),
        )
      ),
    );
  }
}
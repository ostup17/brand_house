import 'package:brand_house/features/presentation/config.dart';
import 'package:brand_house/features/presentation/widgets/button.dart';
import 'package:brand_house/features/presentation/widgets/switch.dart';
import 'package:brand_house/features/presentation/widgets/form.dart';
import 'package:brand_house/features/presentation/widgets/header.dart';
import 'package:flutter/material.dart';

import '../widgets/line.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _passwordEditingController = TextEditingController();
  final TextEditingController _loginEditingController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  late bool _passwordVisible;
  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:   Container(
        color: Colors.white,
        child: Column(
          children: [
            const HeaderLogin(header: 'Вход', marginBottom: 50, marginTop: 50,),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child:  Form(
                key: _formKey,
                  child:  Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        FormInputs(controller: _loginEditingController, hintText: ('Телефон')),
                        const SizedBox(height: 40,),
                        TextFormField(
                            controller: _passwordEditingController,
                            obscureText: !_passwordVisible,
                            enableSuggestions: false,
                            autocorrect: false,
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: ColorConfig.bgInput,
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: ColorConfig.borderInput)
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: ColorConfig.borderInput)
                                ),
                                border: InputBorder.none,
                                hintStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: ColorConfig.textBlack,),
                                hintText: 'Введите ваш пароль',
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    _passwordVisible
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: ColorConfig.iconInput,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _passwordVisible = !_passwordVisible;
                                    });
                                  },
                                )
                            )
                        ),
                        LoginButton(background: ColorConfig.violet, border: ColorConfig.violet, marginTop: 32, text: 'Вход', textColor: Colors.white, navigation: 'home',),
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
                              width: 126,
                              child: Text('Запомнить меня', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16, color: ColorConfig.textPrompt),),
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Text('Забыли пароль?', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16, color: ColorConfig.textPrompt),),
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
                        LoginButton(background: Colors.white, border: ColorConfig.violet, marginTop: 32, text: 'Регистрация', textColor: ColorConfig.violet, navigation: 'registration',),
                      ],
                    ),
                  )
              ),
            )
          ],
        ),
      )
    );
  }
}


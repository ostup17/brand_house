import 'package:brand_house/features/presentation/config.dart';
import 'package:brand_house/features/presentation/login/widgets/lolgin_switch.dart';
import 'package:brand_house/features/presentation/login/widgets/form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widgets/login_line.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _passwordEditingController = TextEditingController();
  final TextEditingController _loginEditingController = TextEditingController();

  late bool _passwordVisible;
  @override
  void initState() {
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:   Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24.3, vertical: 50),
              child:  Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.keyboard_arrow_left, size: 34, color: ColorConfig.iconLogin,)),
                  Text('Вход', style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500, color: ColorConfig.textBlack),),
                  const SizedBox(
                    width: 46,
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child:  Form(
                // key: _formKey,
                  child:  Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        FormInputs(controller: _loginEditingController, hintText: ('Телефон')),
                        const SizedBox(height: 40,),
                        Container(
                          // margin: const EdgeInsets.only(right: 16),
                          child: TextFormField(
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
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 32),
                          height: 56,
                          child: const Align(
                            alignment: Alignment.center,
                            child: Text('Вход', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),),
                          ),
                          decoration: BoxDecoration(
                            color: ColorConfig.violet,
                            borderRadius: BorderRadius.circular(32)
                          ),
                        ),
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
                        Container(
                          margin: EdgeInsets.only(top: 28),
                          child: Container(
                            margin: const EdgeInsets.only(top: 32),
                            height: 56,
                            decoration: BoxDecoration(
                                border: Border.all(color: ColorConfig.violet),
                                borderRadius: BorderRadius.circular(32)
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text('Регистрация', style: TextStyle(color: ColorConfig.violet, fontSize: 16, fontWeight: FontWeight.w600),),
                            ),
                          ),
                        )
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


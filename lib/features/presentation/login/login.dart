import 'package:brand_house/features/presentation/config.dart';
import 'package:brand_house/features/presentation/login/widgets/form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

  Widget build(BuildContext context) {
    return Scaffold(
      body:   Container(
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
              margin: EdgeInsets.only(right: 16),
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
                          icon: Icon(Icons.lock),
                          hintText: 'Введите ваш пароль',
                          suffixIcon: IconButton(
                            icon: Icon(
                              _passwordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Theme.of(context).primaryColorDark,
                            ),
                            onPressed: () {
                              setState(() {
                                _passwordVisible = !_passwordVisible;
                              });
                            },
                          )
                        )
                      ),
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
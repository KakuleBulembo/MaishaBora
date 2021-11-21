import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:maisha_bora/auth/register_screen.dart';
import 'package:maisha_bora/components/background.dart';
import 'package:maisha_bora/components/rounded_button.dart';
import 'package:maisha_bora/constant.dart';

import '../components/already_have_an_account_check.dart';
import '../components/rounded_input_field.dart';
import '../components/rounded_password_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static String id = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
                "LOGIN",
              style: TextStyle(
                color: kPrimaryColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
                height: size.height * 0.03,
            ),
            SvgPicture.asset(
                'assets/icons/login.svg',
              height: size.height * 0.3,
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            RoundedTextFormField(
              icon: Icons.person,
              hintText: 'Your Email',
              onChanged: (value){},
            ),
            RoundedPasswordField(
              hintText: 'Password',
              obscureText: true,
              onTap: (){},
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            RoundedButton(
                label: 'Login',
                onPressed: (){},
                color: kPrimaryColor,
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            AlreadyHaveAnAccountCheck(
              onTap: (){
                Navigator.pushNamed(context, RegisterScreen.id);
              },
            )
          ],
        )
    );
  }
}


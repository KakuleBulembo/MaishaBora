import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:maisha_bora/auth/login_screen.dart';
import 'package:maisha_bora/components/already_have_an_account_check.dart';
import 'package:maisha_bora/components/background.dart';
import 'package:maisha_bora/components/rounded_button.dart';
import 'package:maisha_bora/components/rounded_input_field.dart';
import 'package:maisha_bora/components/rounded_password_field.dart';
import 'package:maisha_bora/constant.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);
  static String id = 'register_screen';

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('REGISTER', style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              SvgPicture.asset(
                  'assets/icons/signup.svg',
                height: size.height * 0.3,
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              RoundedTextFormField(
                  hintText: 'Your Username',
                  icon: Icons.person,
                  onChanged: (value){}
              ),
              RoundedTextFormField(
                  hintText: 'Your Email',
                  icon: Icons.person,
                  onChanged: (value){}
              ),
              RoundedPasswordField(
                  hintText: 'Password',
                  obscureText: true,
                  onTap: (){}
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              RoundedButton(
                  label: 'Register',
                  onPressed: (){},
                  color: kPrimaryColor,
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              AlreadyHaveAnAccountCheck(
                login: false,
                  onTap: (){
                  Navigator.popAndPushNamed(context, LoginScreen.id);
                  }
              ),
            ],
          ),
        ),
    );
  }
}

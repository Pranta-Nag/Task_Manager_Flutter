import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/ui/screens/auth/emailVerification_screen.dart';
import 'package:task_manager/ui/screens/auth/signUp_screen.dart';
import 'package:task_manager/ui/screens/main_bottom_nav_bar_screen.dart';
import 'package:task_manager/ui/utility/app_colors.dart';
import 'package:task_manager/ui/widgets/background_widget.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  final TextEditingController _emailTEcontroller = TextEditingController();
  final TextEditingController _passwordTEcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWidget(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 110,
                  ),
                  Text('Get Started With',
                      style: Theme.of(context).textTheme.titleLarge),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: _emailTEcontroller,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      hintText: 'Email',
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    controller: _passwordTEcontroller,
                    decoration: const InputDecoration(
                      hintText: 'Password',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: _onTapNextButton,
                    child: const Icon(Icons.arrow_circle_right),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Center(
                    child: Column(
                      children: [
                        TextButton(
                          onPressed: _onTapForgotPasswordButton,
                          child: const Text('Forgot Password'),
                        ),
                        RichText(
                          text: TextSpan(
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.4,
                            ),
                            text: "Don't have an account?",
                            children: [
                              TextSpan(
                                style: const TextStyle(
                                  color: AppColors.themeColor,
                                ),
                                text: ' Sign Up',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = _onTapSignUpButton,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onTapNextButton() {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => const MainBottomNavBarScreen()));
  }

  void _onTapSignUpButton() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const SignupScreen()));
  }

  void _onTapForgotPasswordButton() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => const EmailverificationScreen()));
  }

  @override
  void dispose() {
    _emailTEcontroller.dispose();
    _passwordTEcontroller.dispose();
    super.dispose();
  }
}

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:task_manager/ui/screens/auth/sigIn_screen.dart';
import 'package:task_manager/ui/utility/app_colors.dart';
import 'package:task_manager/ui/widgets/background_widget.dart';

class SetPasswordScreen extends StatefulWidget {
  const SetPasswordScreen({super.key});

  @override
  State<SetPasswordScreen> createState() => _SetPasswordScreenState();
}

class _SetPasswordScreenState extends State<SetPasswordScreen> {
  final TextEditingController _passwordTEcontroller = TextEditingController();
  final TextEditingController _confirmPasswordTEcontroller =
      TextEditingController();

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
                  Text('Set Password',
                      style: Theme.of(context).textTheme.titleLarge),
                  Text(
                      'Minimum length of password should be more than 6 letter and combinition of number or character',
                      style: Theme.of(context).textTheme.titleSmall),
                  const SizedBox(
                    height: 20,
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
                  TextFormField(
                    controller: _confirmPasswordTEcontroller,
                    decoration: const InputDecoration(
                      hintText: 'Confirm Password',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: _onTapConfirmButton,
                    child: const Text("Confirm"),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Center(
                    child: RichText(
                      text: TextSpan(
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.4,
                        ),
                        text: "Have account?",
                        children: [
                          TextSpan(
                            style: const TextStyle(
                              color: AppColors.themeColor,
                            ),
                            text: ' Sign In',
                            recognizer: TapGestureRecognizer()
                              ..onTap = _onTapSignInButton,
                          )
                        ],
                      ),
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

  void _onTapSignInButton() {
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => const SigninScreen(),
        ),
        (Route) => false);
  }

  void _onTapConfirmButton() {
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => const SigninScreen(),
        ),
        (Route) => false);
  }

  @override
  void dispose() {
    _passwordTEcontroller.dispose();
    _confirmPasswordTEcontroller.dispose();
    super.dispose();
  }
}

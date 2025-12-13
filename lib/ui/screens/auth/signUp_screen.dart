import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/ui/utility/app_colors.dart';
import 'package:task_manager/ui/widgets/background_widget.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController _emailTEcontroller = TextEditingController();
  final TextEditingController _firstNameTEcontroller = TextEditingController();
  final TextEditingController _lastNameTEcontroller = TextEditingController();
  final TextEditingController _mobileTEcontroller = TextEditingController();
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
                  Text('Join With Us',
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
                    height: 12,
                  ),
                  TextFormField(
                    controller: _firstNameTEcontroller,
                    decoration: const InputDecoration(
                      hintText: 'First Name',
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  TextFormField(
                    controller: _lastNameTEcontroller,
                    decoration: const InputDecoration(
                      hintText: 'Last Name',
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  TextFormField(
                    controller: _mobileTEcontroller,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      hintText: 'Phone',
                    ),
                  ),
                  const SizedBox(
                    height: 12,
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
                    onPressed: () {},
                    child: const Icon(Icons.arrow_back),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  _backToSignInAction(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _backToSignInAction() {
    return Center(
      child: RichText(
        text: TextSpan(
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.4,
          ),
          text: "Have Account?",
          children: [
            TextSpan(
              style: const TextStyle(
                color: AppColors.themeColor,
              ),
              text: ' Sign In',
              recognizer: TapGestureRecognizer()..onTap = _onTapSignInButton,
            )
          ],
        ),
      ),
    );
  }

  void _onTapSignInButton() {
    Navigator.pop(context);
  }

  @override
  void dispose() {
    _emailTEcontroller.dispose();
    _passwordTEcontroller.dispose();
    _firstNameTEcontroller.dispose();
    _lastNameTEcontroller.dispose();
    _mobileTEcontroller.dispose();
    super.dispose();
  }
}

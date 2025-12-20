import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/ui/screens/auth/pin_verification_screen.dart';
import 'package:task_manager/ui/utility/app_colors.dart';
import 'package:task_manager/ui/widgets/background_widget.dart';

class EmailverificationScreen extends StatefulWidget {
  const EmailverificationScreen({super.key});

  @override
  State<EmailverificationScreen> createState() =>
      _EmailverificationScreenState();
}

class _EmailverificationScreenState extends State<EmailverificationScreen> {
  final TextEditingController _emailTEcontroller = TextEditingController();

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
                  Text('Your Email Address',
                      style: Theme.of(context).textTheme.titleLarge),
                  Text(
                      'A 6 digit verification pin will send to your email address',
                      style: Theme.of(context).textTheme.titleSmall),
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
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: _onTapConfirmButton,
                    child: const Icon(Icons.arrow_back),
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
    Navigator.pop(context);
  }

  void _onTapConfirmButton() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const PinVerificationScreen(),
      ),
    );
  }

  @override
  void dispose() {
    _emailTEcontroller.dispose();
    super.dispose();
  }
}

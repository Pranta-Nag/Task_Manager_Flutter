import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:task_manager/ui/screens/auth/set_password_Screen.dart';
import 'package:task_manager/ui/screens/auth/sigIn_screen.dart';
import 'package:task_manager/ui/utility/app_colors.dart';
import 'package:task_manager/ui/widgets/background_widget.dart';

class PinVerificationScreen extends StatefulWidget {
  const PinVerificationScreen({super.key});

  @override
  State<PinVerificationScreen> createState() => _PinVerificationScreenState();
}

class _PinVerificationScreenState extends State<PinVerificationScreen> {
  final TextEditingController _pinTEcontroller = TextEditingController();

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
                  Text('Pin Verification',
                      style: Theme.of(context).textTheme.titleLarge),
                  Text(
                      'A 6 digit verification has been send to your email address',
                      style: Theme.of(context).textTheme.titleSmall),
                  const SizedBox(
                    height: 20,
                  ),
                  _buildPinCodeTextField(context),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: _onTapOTPButton,
                    child: const Text("Verify"),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  _buildSignInSection(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSignInSection() {
    return Center(
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
              recognizer: TapGestureRecognizer()..onTap = _onTapSignInButton,
            )
          ],
        ),
      ),
    );
  }

  Widget _buildPinCodeTextField(BuildContext context) {
    return PinCodeTextField(
      length: 6,
      obscureText: false,
      animationType: AnimationType.fade,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(5),
        fieldHeight: 50,
        fieldWidth: 40,
        activeFillColor: Colors.white,
        selectedFillColor: Colors.white,
        inactiveFillColor: Colors.white,
        activeColor: AppColors.themeColor,
      ),
      animationDuration: const Duration(milliseconds: 300),
      backgroundColor: Colors.transparent,
      enableActiveFill: true,
      controller: _pinTEcontroller,
      keyboardType: TextInputType.number,
      appContext: context,
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

  void _onTapOTPButton() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SetPasswordScreen(),
      ),
    );
  }

  @override
  void dispose() {
    _pinTEcontroller.dispose();
    super.dispose();
  }
}

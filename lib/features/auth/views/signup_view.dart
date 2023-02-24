import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:twitter_clone/common/common.dart';
import 'package:twitter_clone/constants/constants.dart';
import 'package:twitter_clone/features/auth/views/views.dart';
import 'package:twitter_clone/features/auth/widgets/widgets.dart';
import 'package:twitter_clone/theme/theme.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});
  static route() => MaterialPageRoute(
        builder: (context) => const SignUpView(),
      );

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final appBar = UIConstants.appBar();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                AuthField(
                  controller: emailController,
                  hintText: "Email",
                ),
                const SizedBox(height: 16),
                AuthField(
                  controller: passwordController,
                  hintText: "Password",
                ),
                const SizedBox(height: 20),
                Align(
                  alignment: Alignment.topRight,
                  child: RoundedSmallButton(
                    label: "Done",
                    onTab: () {},
                  ),
                ),
                const SizedBox(height: 16),
                RichText(
                  text: TextSpan(
                    text: "Already have an account?",
                    style: const TextStyle(fontSize: 16),
                    children: [
                      TextSpan(
                        text: "  Login",
                        style: const TextStyle(
                          fontSize: 16,
                          color: Palette.blueColor,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(context, LoginView.route());
                          },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:twitter_clone/constants/constants.dart';
import 'package:twitter_clone/features/auth/widgets/auth_field.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}

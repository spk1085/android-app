import 'package:aiapp/features/home/auth/view/widgets/custom_field.dart';
import 'package:aiapp/features/home/auth/view/widgets/auth_gradient_button.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final nameController = TextEditingController();
final emailController = TextEditingController();
final passwordController = TextEditingController();
final formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
    formKey.currentState!.reset();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  )
                ),
                const SizedBox(height: 30),
                CustomField(
                  hintText: 'Name',
                  controller: nameController,
                ),
                const SizedBox(height: 15),
                CustomField(
                  hintText: 'Email',96
                  controller: emailController,
                ),
                const SizedBox(height: 15),
                CustomField(
                  hintText: 'Password',
                  controller: passwordController,
                  isObscureText: true,
                ),
                const SizedBox(height: 20),
                const AuthGradientButton(),
                const SizedBox(height: 20),
                RichText(text: TextSpan(
                  text: 'Already have an account? ',
                  style: Theme.of(context).textTheme.titleMedium,
                  children: const [
                    TextSpan(
                      text: 'Sign in',
                      style: TextStyle(
                        color: Colors.blue, // Replace with your desired color
                        fontWeight: FontWeight.bold,
                      )
                    )
                  ],
                ),
                )
              ],
          ),
        ),
      ),

    );
  }
}
  
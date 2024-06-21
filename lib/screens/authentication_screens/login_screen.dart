import 'package:e_commerce_app/screens/authentication_screens/forgot_password.dart';
import 'package:e_commerce_app/screens/authentication_screens/signUp_screen.dart';
import 'package:e_commerce_app/screens/main%20Screens/StartScreen.dart';
import 'package:e_commerce_app/utils/colors.dart';
import 'package:e_commerce_app/widgets/custom_text_fields.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _usernameController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();
    return Scaffold(
      backgroundColor: BackgroundColor,
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        backgroundColor: appbarColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Row(
              children: [
                const Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Flexible(
                  child: Container(),
                  flex: 2,
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            CustomTextFields(
              textEditingController: _usernameController,
              isPass: false,
              hintText: 'Email',
              textInputType: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextFields(
              textEditingController: _passwordController,
              isPass: true,
              hintText: 'Password',
              textInputType: TextInputType.text,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Flexible(
                  child: Container(),
                  flex: 2,
                ),
                const Text(
                  'Forgot your password?',
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ForgotPasswordScreen(),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.forward,
                    color: Color.fromARGB(255, 219, 49, 34),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const StartScreen(),
                  ),
                );
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 48,
                decoration: BoxDecoration(
                    color: const Color(0xFFDB3122),
                    borderRadius: BorderRadius.circular(25)),
                child: const Center(
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            const Text('Or login with social account'),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignupScreen(),
                      ),
                    );
                  },
                  child: Container(
                    width: 92,
                    height: 64,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: const Color(0xDBFFFFFF),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Image.asset(
                        'assets/images/facebookLogo.png',
                        width: 24,
                        height: 24,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Container(
                  width: 92,
                  height: 64,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: const Color.fromARGB(219, 255, 255, 255),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Image.asset(
                      'assets/images/googleLogo.png',
                      width: 24,
                      height: 24,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

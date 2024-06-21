import 'package:e_commerce_app/screens/authentication_screens/login_screen.dart';
import 'package:e_commerce_app/utils/colors.dart';
import 'package:e_commerce_app/widgets/custom_text_fields.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _usernameController = TextEditingController();
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();
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
                  "Sign up",
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
              hintText: 'Username',
              textInputType: TextInputType.text,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextFields(
              textEditingController: _emailController,
              isPass: false,
              hintText: 'Email',
              textInputType: TextInputType.text,
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
                  'Already have an account?',
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
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
              onTap: () {},
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 48,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 219, 49, 34),
                    borderRadius: BorderRadius.circular(25)),
                child: const Center(
                  child: Text(
                    'SIGN UP',
                    style: TextStyle(fontFamily: 'popin', color: Colors.white),
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
                        builder: (context) => LoginScreen(),
                      ),
                    );
                  },
                  child: Container(
                    width: 92,
                    height: 64,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: const Color.fromARGB(219, 255, 255, 255)),
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
                      color: const Color.fromARGB(219, 255, 255, 255)),
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

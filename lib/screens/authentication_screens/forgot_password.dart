import 'package:e_commerce_app/utils/colors.dart';
import 'package:e_commerce_app/widgets/custom_text_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _emailController = TextEditingController();
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
                  'Forgot Password',
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
              height: 100,
            ),
            const Text(
                'Please, enter your email address. You will receive a link to create a new password via email.'),
            const SizedBox(
              height: 10,
            ),
            CustomTextFields(
              textEditingController: _emailController,
              isPass: false,
              hintText: 'Email',
              textInputType: TextInputType.emailAddress,
            ),
            SizedBox(
              height: 100,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 48,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 219, 49, 34),
                    borderRadius: BorderRadius.circular(25)),
                child: Center(
                  child: Text(
                    'LOGIN',
                    style: TextStyle(fontFamily: 'popin', color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

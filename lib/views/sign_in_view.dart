import 'package:flutter/material.dart';
import 'package:hardwere/views/register_view.dart';

import '../widgets/text_field.dart';
import 'home_view.dart';

class SignInView extends StatefulWidget {
  const SignInView({Key? key}) : super(key: key);

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD5D7D5),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 100,
          ),
          const Text(
            "Welcome Back !",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            "Let’s help you meet up your tasks",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.normal,
            ),
          ),
          Image.asset(
            'assets/images/sign_in_image.png',
            height: 150,
            width: 150,
          ),
          const SizedBox(
            height: 25,
          ),
          CustomTextField(
            labelText: 'Enter user name',
            hintText: 'Enter user name',
          ),
          const SizedBox(
            height: 10,
          ),
          CustomTextField(
            labelText: 'Enter password',
            hintText: 'Enter password',
          ),
          Spacer(flex: 1,),
          Align(
              alignment: Alignment.center,
              child: Center(
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeView()),
                      );
                    },
                    child: Text("Sign In"),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(300, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            30), // Set your desired border radius
                      ),
                      backgroundColor:
                      Colors.red, // Set your desired background color here
                    )),
              )),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Don't have an account?"),
              const SizedBox(
                width: 5,
              ),
              InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegisterView()),
                    );
                  },
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.red),
                  ))
            ],
          ),
          const SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}

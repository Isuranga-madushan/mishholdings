import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hardwere/views/sign_in_view.dart';
import 'package:hardwere/widget/text_input.dart';

import '../widgets/drop_down.dart';
import '../widgets/text_field.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String _selectedRole = 'User';
  final List<String> _roleOptions = ['User', 'Admin', 'Guest'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD5D7D5),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/reg_image.png',
            height: 100,
            width: 100,
          ),
          const Text(
            "Welcome Onboard !",
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
           const SizedBox(
            height: 25,
          ),
          CustomTextField(
            labelText: 'Enter your full name',
            hintText: 'Enter your full name',
          ),
          const SizedBox(
            height: 10,
          ),
          CustomTextField(
            labelText: 'Enter your email',
            hintText: 'Enter your email',
          ),
          const SizedBox(
            height: 10,
          ),
          CustomTextField(
            labelText: 'Enter your password',
            hintText: 'Enter your password',
          ),
          const SizedBox(
            height: 10,
          ),
          CustomTextField(
            labelText: 'Confirm Password',
            hintText: 'Confirm Password',
          ),
          const SizedBox(
            height: 10,
          ),
          CustomDropdownTextField(
            controller: _usernameController,
            labelText: 'Select User Category',
            hintText: 'Select a role',
            dropdownItems: _roleOptions,
            selectedDropdownValue: _selectedRole,
            onDropdownChanged: (newValue) {
              _selectedRole = newValue;
            },
          ),
          const SizedBox(
            height: 10,
          ),
          Align(
              alignment: Alignment.center,
              child: Center(
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignInView()),
                      );
                    },
                    child: Text("Register"),
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
              const Text("Already have an account?"),
              const SizedBox(
                width: 5,
              ),
              InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignInView()),
                    );
                  },
                  child: const Text(
                    "Sign in",
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

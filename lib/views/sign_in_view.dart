import 'package:flutter/material.dart';

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
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Align(
              alignment: Alignment.center,
              child: ElevatedButton(onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeView()),
                );
              }, child: Text("Sign IN"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red, // Set your desired background color here
                ),))
        ],
      ),
    );
  }
}

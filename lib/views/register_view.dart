import 'package:flutter/material.dart';
import 'package:hardwere/views/sign_in_view.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
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
                  MaterialPageRoute(builder: (context) => SignInView()),
                );
              }, child: Text("Register"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red, // Set your desired background color here
                ),))
        ],
      ),
    );
  }
}

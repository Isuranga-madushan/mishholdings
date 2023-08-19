import 'package:flutter/material.dart';
import 'package:hardwere/views/sign_in_view.dart';

import '../widgets/drop_down.dart';


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

        children: [

          SizedBox(height: 20,),
          CustomTextFieldWithDropdown(
            controller: _usernameController,
            labelText: 'Username',
            hintText: 'Enter your username',
            keyboardType: TextInputType.emailAddress,
            dropdownItems: _roleOptions,
            selectedDropdownValue: _selectedRole,
            onDropdownChanged: (newValue) {
              _selectedRole = newValue;
            },
          ),
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

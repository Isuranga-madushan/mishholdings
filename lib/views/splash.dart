import 'package:flutter/material.dart';
import 'package:hardwere/views/register_view.dart';

import '../widgets/text_field.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD5D7D5),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/app_logo.png',
            height: 75,
            width: 75,
          ),
          Image.asset(
            'assets/images/get_started.png',
            height: 200,
            width: 200,
          ),
          Text("Gets Things Done With Ease!",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Align(
            alignment: Alignment.center,
              child: Center(
                child: ElevatedButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterView()),
                  );
                }, child: Text("Get Start"),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(300, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30), // Set your desired border radius
                      ),
                      backgroundColor: Colors.red, // Set your desired background color here
                    )
                ),
              )),
        ],
      ),
    );
  }
}

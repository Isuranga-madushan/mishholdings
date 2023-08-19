import 'package:flutter/material.dart';
import 'package:hardwere/views/register_view.dart';

import '../widgets/text_field.dart';

class Splash extends StatefulWidget {
   Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}
class _SplashState extends State<Splash> {
  late bool _splitScreenMode;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD5D7D5),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           SizedBox(
            height: 100,
          ),
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
          const Text("Gets Things Done With Ease!",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 30, 20, 30),
            child: Text("Lorem ipsum dolor sit amet consectetur. Dictum pharetra eu consectetur nec enim sapien ornare gravida. Proin aliquet massa enim scelerisque feugiat scelerisque. Eros non at blandit sapien.",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.normal,
            ),
            textAlign: TextAlign.center,),
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
          const SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}

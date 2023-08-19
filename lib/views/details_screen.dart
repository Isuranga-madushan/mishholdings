import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hardwere/views/sign_in_view.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD5D7D5),
      body: SafeArea(
          child: Column(
        children: [
          Image.asset(
            'assets/images/hardware_imamge.png',
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text("Asian Hardware PVT(LTD)",
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),),
                    Spacer(flex: 1,),
                    Row(
                      children: [
                        Icon(Icons.location_on),
                        Text("3.5KM")
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                        child: Text("simply dummy text of the printing and typesetting industry.simply dummy text of the printing and typesetting industry.",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                      textAlign: TextAlign.justify,)),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Icon(Icons.mail),
                          SizedBox(width: 10,),
                          Text("96-A Wattala,\nHekitta Rd,\nWattala")
                        ],),
                        SizedBox(height: 10,),
                        Row(children: [
                          Icon(Icons.call),
                          SizedBox(width: 10,),
                          Text("07911123456")
                        ],)
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.all(20),
          child: Image.asset(
            'assets/images/map.png',
          ),),
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
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(100, 30),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            30), // Set your desired border radius
                      ),
                      backgroundColor:
                      Colors.red, // Set your desired background color here
                    ),
                    child: const Text("Back")),
              )),
        ],
      )),
    );
  }
}

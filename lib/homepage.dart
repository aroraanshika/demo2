import 'package:demo2/phone_number.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double padding = height * 0.01;
    // vertical padding for text
    double vpadding = height * 0.6 * 0.05;
    // horizontal padding for text
    double hpadding = width * 0.18;
    double sheight = height * 0.03;
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: height * 0.40,
                  decoration: BoxDecoration(color: Colors.lightGreen),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.lightGreen,
                  ),
                  child: Container(
                    height: height * 0.60,
                    width: width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    padding: EdgeInsets.all(10.0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: hpadding, vertical: vpadding),
                            child: Text(
                              'Shop Eazy, Shop Smart',
                              style: TextStyle(
                                fontSize: height * 0.052,
                                fontWeight: FontWeight.bold,
                                color: Colors.lightGreen,
                              ),
                            ),
                          ),
                          SizedBox(height: sheight),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              primary: Colors.grey,

                              // Change text color to grey
                            ),
                            child: Text(
                              'Log in',
                              style: TextStyle(
                                fontSize:
                                    height * 0.6 * 0.05, // Change font size
                                // fontWeight:
                                //     FontWeight.bold, // Change font weight
                              ),
                            ),
                          ),
                          SizedBox(height: sheight),
                          // Contact number
                          Contact_number(),

                          SizedBox(height: sheight),

                          // elevated button
                          Container(
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Continue',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                  ),
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.lightGreen,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}

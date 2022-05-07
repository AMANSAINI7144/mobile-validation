import 'package:flutter/material.dart';
import 'package:mobile_validation/pages/thirdPage.dart';

class otpValidate extends StatefulWidget {
  const otpValidate({Key? key}) : super(key: key);

  @override
  State<otpValidate> createState() => _otpValidateState();
}

class _otpValidateState extends State<otpValidate> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.yellow,
        body: Container(
          padding: EdgeInsets.all(8.0),
          margin: const EdgeInsets.only(top: 50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Icon(
                      Icons.arrow_back_ios_outlined,
                      color: Colors.white,
                      size: 30.0,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Enter OTP",
                      style: TextStyle(
                        fontSize: 40.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text("idhar edit karna ha .")
                ],
              ),
              Column(
                children: [
                  FractionallySizedBox(
                    widthFactor: 0.8,
                    child: FlatButton(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'Verify',
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                      shape: RoundedRectangleBorder(side: BorderSide(
                          color: Colors.black,
                          width: 2,
                          style: BorderStyle.solid
                      ), borderRadius: BorderRadius.circular(50)),
                      color: Color(0xFF061AF5),
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const thirdPage(),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

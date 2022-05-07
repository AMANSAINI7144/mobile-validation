import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:flutter/widgets.dart';
import 'package:mobile_validation/pages/otpPage.dart';

class mobileValidation extends StatefulWidget {
  const mobileValidation({Key? key}) : super(key: key);

  @override
  State<mobileValidation> createState() => _mobileValidationState();
}

class _mobileValidationState extends State<mobileValidation> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                  "Let's get",
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "started",
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              IntlPhoneField(
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(),
                  ),
                ),
                initialCountryCode: 'IN',
                onChanged: (phone) {
                  print(phone.completeNumber);
                },
                onCountryChanged: (country) {
                  print('Country changed to: ' + country.name);
                },
              ),
            ],
          ),
          Column(
            children: [
              FractionallySizedBox(
                widthFactor: 0.8,
                child: FlatButton(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'Get OTP',
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
                        builder: (context) => const otpValidate(),
                      ),
                    );
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

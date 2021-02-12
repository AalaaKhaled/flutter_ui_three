import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ui_three/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui_three/screens/home/home.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        body: Container(
          width: double.infinity,
          height: size.height,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    'assets/images/main1.svg',
                    width: size.width,
                    height: size.height * 0.6,
                    fit: BoxFit.fill,
                  ),
                  Container(
                    width: size.width,
                    padding: const EdgeInsets.only(top: 20, bottom: 10),
                    child: Text(
                      'The Camping App',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                  ),
                  Container(
                    width: size.width,
                    padding: const EdgeInsets.only(left: 40, right: 40),
                    child: Text(
                      'Connect with people and plan your next escape to explore this beautiful world!',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  Container(
                    width: size.width * 0.5,
                    height: 60,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (ctx) => HomeScreen()));
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80),
                      ),
                      textColor: Colors.white,
                      padding: const EdgeInsets.all(0),
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(80),
                            color: kPrimaryColor,
                            boxShadow: [
                              BoxShadow(
                                  color: kPrimaryColor.withOpacity(0.3),
                                  blurRadius: 20,
                                  offset: Offset(0, 8))
                            ]),
                        padding: const EdgeInsets.all(0),
                        child: Text(
                          'LET\'S GO',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

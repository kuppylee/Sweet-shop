import 'package:flutter/material.dart';
import '../constants_page.dart';
import 'sweet_products_page.dart';

class OnboardingPage extends StatefulWidget {
  // const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/background5.png',),
                fit: BoxFit.cover
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    child: SafeArea(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                            child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(children: <TextSpan>[
                                TextSpan(
                                    text: 'You will ',
                                    style: kOnboardingCardTextStyle,),
                                TextSpan(
                                    text: 'be delighted',
                                    style: kOnboardingCardColorTextStyle,
                                ),
                                TextSpan(
                                  text: ' with our sweets!',
                                  style: kOnboardingCardTextStyle,
                                ),
                              ]),
                            ),

                          ),
                          SizedBox(height: 15,),
                          Text('There is something \n for everyone to taste',
                            textAlign: TextAlign.center,
                            style: kOnboardingCardTextStyle2,
                          ),
                          SizedBox(height: 15,),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                margin: EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                    color: Colors.lightBlue,
                                    borderRadius: BorderRadius.circular(2)),
                                width: 14,
                                height: 5,
                              ),
                              Container(
                                margin: EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                    color: Colors.lightBlue,
                                    shape: BoxShape.circle),
                                width: 5,
                                height: 5,
                              ),
                              Container(
                                margin: EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                    color: Colors.lightBlue,
                                    shape: BoxShape.circle),
                                width: 5,
                                height: 5,
                              ),
                            ],
                          ),
                          SizedBox(height: 15.0,),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                            child: Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xFFFF9680),
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                                ),
                                  onPressed: () {
                                  Navigator.pushNamed(context, '/first');
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                                    child: SizedBox(
                                      width: double.infinity,
                                      child: Text('it\'s wonderful',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white70,
                                        ),
                                      ),
                                    ),
                                  ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
    );
  }
}

// RichText(
// // textAlign: TextAlign.center,
// // text: TextSpan(children: <TextSpan>[
// // TextSpan(
// // text: "I agree to the ",
// // style: TextStyle(color: Colors.black87)),
// // TextSpan(
// // text: "Terms and Conditions",
// // style: TextStyle(
// // color: Colors.deepPurple,
// // fontWeight: FontWeight.bold)),
// // ]),
// ),

// child: Text('You will be delighted \n with our sweets! ',
// textAlign: TextAlign.center,
// style: kOnboardingCardTextStyle,
// ),
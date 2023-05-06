import 'package:flutter/material.dart';
import 'package:pedal_pro/componenet/customTextFormFiled.dart';
import 'package:pedal_pro/componenet/customContainer.dart';

class TecSignUp extends StatefulWidget {
  const TecSignUp({Key? key}) : super(key: key);

  @override
  _TecSignUpState createState() => _TecSignUpState();
}

class _TecSignUpState extends State<TecSignUp> {


  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0XFFEEEEEE),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: height / 1.1,
              child: Stack(
                children: [
                  CustomContainer(height: height,title: 'Create Account',),
                  Positioned(
                    top: 190,
                    left: width / 7,
                    child: Container(
                      width: width / 1.4,
                      height: height / 1.5,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 45,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 30, left: 30, right: 30, bottom: 10),
                            child: CustomTextFormField(
                              lableText: 'Full Name',
                              hintText: 'Enter your Name',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30, right: 30),
                            child: CustomTextFormField(
                              lableText: 'Email',
                              hintText: 'Enter your email',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 30, right: 30, bottom: 10, top: 15),
                            child: CustomTextFormField(
                              lableText: 'Phone Number',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 30, right: 30, bottom: 10, top: 15),
                            child: CustomTextFormField(
                              lableText: 'Password',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, top: 10, bottom: 10),
                            child: CheckboxListTile(
                              value: false,
                              onChanged: (value) {
                                value = true;
                              },
                              title: Text('I agree with & condition'),
                              controlAffinity: ListTileControlAffinity.leading,
                              /* shape: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(20)
                              ),*/
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Register',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                            style: TextButton.styleFrom(
                                primary: Colors.white,
                                backgroundColor: Color(0XFFDD2C00),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

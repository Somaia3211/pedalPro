import 'package:flutter/material.dart';
import 'package:pedal_pro/componenet/customContainer.dart';
import 'package:pedal_pro/componenet/customTextFormFiled.dart';

class CustomerLogin extends StatefulWidget {
  const CustomerLogin({Key? key}) : super(key: key);

  @override
  _CustomerLoginState createState() => _CustomerLoginState();
}

class _CustomerLoginState extends State<CustomerLogin> {
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
                  CustomContainer(
                    height: height,
                    title: 'Sign In as Customer',
                  ),
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
                            height: 100,
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
                              lableText: 'Password',
                            ),
                          ),
                          SizedBox(height: 40,),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, top: 10, bottom: 30),
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
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                'LogIn',
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

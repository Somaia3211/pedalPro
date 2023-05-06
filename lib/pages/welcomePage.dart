import 'package:flutter/material.dart';
import 'package:pedal_pro/componenet/RoundedButton.dart';
import 'package:pedal_pro/constant.dart';
import 'package:pedal_pro/pages/CustomerSignUpPage.dart';
import 'package:pedal_pro/pages/loginWelcomePage.dart';
import 'package:pedal_pro/pages/tecSignUpPage.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
          gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [ Colors.deepOrange,Colors.red],
    ),
        ),
          child: Column(
            children:[
              const SizedBox(height: 20,),
              const Icon(Icons.pedal_bike,
                size: 250,
                color: Colors.white70,
              ),
             const SizedBox(height: 40,),
             const Text('PEDAL PRO',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(height: 5,),
             const Text('ON_DEMAND BIKE REPAIR SERVICE',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 20,

                ),
              ),
             const SizedBox(
                height: 50,
              ),
              RoundButton(title: 'SIGN UP AS A CUSTOMER',onPress:(){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>CustomerSignUp()));
              },),
              const SizedBox(height: 30,),
              RoundButton(title: 'SIGN UP AS A TECHNICIAN',onPress: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>TecSignUp()));
              },),
              const SizedBox(height: 10,),
              TextButton(
                child: Text(' Already have account?  Login',
                style: TextStyle(
                  color: kBlack45,
                  fontWeight: FontWeight.bold
                ),),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginWelcomPage()));
                },
              ),
            ]

          ),
    ),
      ));
  }
}


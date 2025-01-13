import 'package:flutter/material.dart';
import 'package:restaurant/Modules/Login%20Screen.dart';
import 'package:sign_in_button/sign_in_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
              child: Image.asset('assets/images/background.png',
                fit: BoxFit.fill,)),
         SingleChildScrollView(
           scrollDirection: Axis.vertical,
           child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 70,horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                      child: Container(
                        height: 30,
                        width: 45,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Skip",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 9,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Sofia"),
                            )),
                      ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Text('Welcome to',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Sofia',
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  Text('FoodHub',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.deepOrange,
                    fontFamily: 'Sofia',
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  Text('Your favourite foods delivered',
                  style: TextStyle(
                    fontFamily: 'Sofia',
                    fontSize: 12,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,

                  ),
                  ),
                  Text('fast at your door.',
                    style: TextStyle(
                      fontFamily: 'Sofia',
                      fontSize: 12,
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,

                    ),
                  ),
                  SizedBox(
                    height: 130,),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 1,
                          width: 90,
                          color: Colors.white,
                        ),
                        Text('Sign in with',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Sofia',
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          height: 1,
                          width: 90,
                          color: Colors.white,
                        ),

                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      ElevatedButton.icon(
                      onPressed: (){},
                      icon: Image.asset('assets/images/facebook.png'),
                      label: Text('facebook',
                        style: TextStyle(
                          fontFamily: 'Sofia',
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),),
                  style: ElevatedButton.styleFrom(
                    backgroundColor:Colors.white ,
                    foregroundColor:Colors.blue ,
                    side:BorderSide(color: Colors.blue) ,
                    minimumSize: Size(70, 50),
                  ),
                  ),
                      SizedBox(width: 25,),
                      ElevatedButton.icon(
                        onPressed: (){},
                        icon: Image.asset('assets/images/google.png'),
                        label: Text('Google',
                        style: TextStyle(
                          fontFamily: 'Sofia',
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor:Colors.white ,
                          foregroundColor:Colors.red ,
                          side:BorderSide(color: Colors.white) ,
                          minimumSize: Size(60, 50),
                        ),
                      ),


                    ],
                  ),
                  SizedBox(height: 25,),
                  Center(
                    child: OutlinedButton(
                        onPressed: (){},
                        child: Text('Start with email or phone',
                          style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Sofia',
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),),
                      style: ElevatedButton.styleFrom(
                        minimumSize:Size(double.infinity, 50) ,
                        backgroundColor: Colors.white60,
                        side: BorderSide(color: Colors.black)
                      ),

                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already have an account?  ',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Sofia',
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),),
                      TextButton(
                          onPressed: (){
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (context)=> LoginScreen()));
                          },
                          child:  Text('Sign In',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Sofia',
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),),),
                    ],
                  ),

                ],
              ),
            ),
         ),
        ],
      ),
    );
  }
}

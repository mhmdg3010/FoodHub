import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:restaurant/Modules/Login%20Screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
              child: Image.asset(
                'assets/images/bglogin.jpg',
                fit: BoxFit.fill,)),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 70,horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white60,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: IconButton(onPressed: (){
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context)=> LoginScreen()));

                    },
                        icon: Icon(Icons.arrow_back_ios_new_rounded)),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Text('Sign Up',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Sofia',
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Full name',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Sofia',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Your full name',
                      border: OutlineInputBorder(),
                    ),


                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('E-mail',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Sofia',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Your email or phone',
                      border: OutlineInputBorder(),
                    ),


                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Password',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Sofia',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Password',
                      suffixIcon: Icon(Icons.remove_red_eye_outlined),
                      border: OutlineInputBorder(),
                    ),


                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Center(
                    child: ElevatedButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepOrange,
                            minimumSize:Size(230, 55)
                        ),
                        child: Text('SIGN UP',
                          style:TextStyle(
                            color: Colors.white,
                            fontFamily: 'Sofia',
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already have an account?  ',
                        style: TextStyle(
                          color: Colors.brown,
                          fontFamily: 'Sofia',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),),
                      TextButton(
                        onPressed: (){
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context)=> LoginScreen()));
                        },
                        child:  Text('Login',
                          style: TextStyle(
                            color: Colors.red,
                            fontFamily: 'Sofia',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),),),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 1,
                              width: 90,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text('Sign up with',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Sofia',
                                color: Colors.brown,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 1,
                              width: 90,
                              color: Colors.grey,
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      ElevatedButton.icon(
                        onPressed: (){},
                        icon: Image.asset('assets/images/facebook.png'),
                        label: Text('facebook',
                          style: TextStyle(
                            fontFamily: 'Sofia',
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),),
                        style: ElevatedButton.styleFrom(
                          backgroundColor:Colors.white ,
                          foregroundColor:Colors.blue ,
                          side:BorderSide(color: Colors.blue) ,
                          minimumSize: Size(80, 50),
                        ),
                      ),
                      Spacer(),
                      ElevatedButton.icon(
                        onPressed: (){},
                        icon: Image.asset('assets/images/google.png'),
                        label: Text('Google',
                          style: TextStyle(
                            fontFamily: 'Sofia',
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor:Colors.white ,
                          foregroundColor:Colors.red ,
                          side:BorderSide(color: Colors.white) ,
                          minimumSize: Size(80, 50),
                        ),
                      ),


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

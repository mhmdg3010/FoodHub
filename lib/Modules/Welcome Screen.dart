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
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 70,horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topRight,
                    child: Container(
                      height: 35,
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
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Sofia"),
                          )),
                    ),
                ),
                SizedBox(
                  height: 70,
                ),
                Text('Welcome to',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Sofia',
                  fontSize: 55,
                  fontWeight: FontWeight.bold,
                ),
                ),
                Text('FoodHub',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.deepOrange,
                  fontFamily: 'Sofia',
                  fontSize: 55,
                  fontWeight: FontWeight.bold,
                ),
                ),
                Text('Your favourite foods delivered',
                style: TextStyle(
                  fontFamily: 'Sofia',
                  fontSize: 18,
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,

                ),
                ),
                Text('fast at your door.',
                  style: TextStyle(
                    fontFamily: 'Sofia',
                    fontSize: 18,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,

                  ),
                ),
                Spacer(),
                Row(
                  children: [
                    Divider(
                      thickness: 1,
                      color: Colors.white,
                      endIndent: 20,
                    ),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 1,
                            width: 100,
                            color: Colors.white,
                          ),
                          Text('Sign in with',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Sofia',
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            height: 1,
                            width: 100,
                            color: Colors.white,
                          ),

                        ],
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      color: Colors.white,
                      endIndent: 20,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
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
                SizedBox(
                  height: 20,),
                ElevatedButton(
                    onPressed: (){},
                    child: Text('Start with email or phone',
                      style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Sofia',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),),
                  style: ElevatedButton.styleFrom(
                    minimumSize:Size(double.infinity, 50) ,
                    side: BorderSide(color: Colors.black)
                  ),

                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have an account?  ',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Sofia',
                        fontSize: 16,
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
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),),),
                  ],
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}

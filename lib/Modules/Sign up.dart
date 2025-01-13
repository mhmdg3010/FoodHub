import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:restaurant/Modules/Chat_Page.dart';
import 'package:restaurant/Modules/Login%20Screen.dart';

import '../Helper/helper.dart';
class SignUpScreen extends StatefulWidget {
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String? email;

  String? passsword;

  bool isLoading = false;

var formK = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
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
                child: Form(
                  key: formK,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Sign Up',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontFamily: 'Sofia',
                          fontSize: 30,
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
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        validator: (value){
                          if(value!.isEmpty){
                            return'name must not be empty';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.orange)
                          ),
                          hintText: 'Your full name',
                          border: OutlineInputBorder(
                          ),
                        ),


                      ),
                      Text('E-mail',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Sofia',
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        onChanged: (data){
                          email= data;
                        },
                        validator: (value){
                          if(value!.isEmpty){
                            return'email must not be empty';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: 'Your email or phone',
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.orange)
                          ),

                        ),


                      ),
                      Text('Password',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Sofia',
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        onChanged: (data){
                          passsword= data;
                        },
                        validator: (value){
                          if(value!.isEmpty){
                            return'password must not be empty';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: 'Password',
                          suffixIcon: Icon(Icons.remove_red_eye_outlined),
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.orange)
                          ),

                        ),


                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Center(
                        child: ElevatedButton(
                            onPressed: () async {
                              if(formK.currentState!.validate()){
                                isLoading= true;
                                setState(() {

                                });
                                try {
                                  await registerUser();
                                  Navigator.pushReplacement(context, MaterialPageRoute(
                                      builder: (context)=> ChatScreen()));
                                } on FirebaseAuthException catch (e) {
                                  if (e.code == 'weak-password') {
                                    showSnackBar(context,'weak password');
                                  } else if (e.code == 'email-already-in-use') {
                                    showSnackBar(context,'email already exists');
                                  }
                                } catch (e) {
                                  showSnackBar(context,'there was an error');
                                }
                                isLoading= false;
                                setState(() {

                                });
                              }
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.deepOrange,
                                minimumSize:Size(230, 55)
                            ),
                            child: Text('SIGN UP',
                              style:TextStyle(
                                color: Colors.white,
                                fontFamily: 'Sofia',
                                fontSize: 13,
                              ),
                            )),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Already have an account?',
                            style: TextStyle(
                              color: Colors.brown,
                              fontFamily: 'Sofia',
                              fontSize: 12,
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
                                fontSize: 12,
                              ),),),
                        ],
                      ),
                      SizedBox(
                        height: 10,
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
                                  width: 85,
                                  color: Colors.grey,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text('Sign up with',
                                  style: TextStyle(
                                    fontSize: 11,
                                    fontFamily: 'Sofia',
                                    color: Colors.brown,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 1,
                                  width: 85,
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
                                color: Colors.black,
                                fontSize: 13,
                              ),),
                            style: ElevatedButton.styleFrom(
                              backgroundColor:Colors.white ,
                              foregroundColor:Colors.blue ,
                              side:BorderSide(color: Colors.white) ,
                              minimumSize: Size(60, 50),
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

                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }


  Future<void> registerUser() async {
    UserCredential user = await FirebaseAuth.instance.
    createUserWithEmailAndPassword(
      email: email!,
      password: passsword!,);
  }
}

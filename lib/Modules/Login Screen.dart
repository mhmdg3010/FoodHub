import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:restaurant/Modules/Sign%20up.dart';

import '../Helper/helper.dart';
import 'Chat_Page.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
   var formKey = GlobalKey<FormState>();

   String? email;

   String? passsword;

   bool isLoading = false;

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
                padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 20),
                child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: IconButton(onPressed: (){},
                            icon: Icon(Icons.arrow_back_ios_new)),
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Text('Login',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Sofia',
                          fontSize: 30,
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
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                     TextFormField(
                       onChanged: (data){
                         email= data;
                       },
                      decoration: InputDecoration(
                        hintText: 'Your email or phone',
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.orange)
                        ),

                      ),
                       validator: (value){
                        if(value!.isEmpty){
                          return'email must not be empty';
                        }
                       },
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
                        height: 3,
                      ),
                      TextFormField(
                        onChanged: (data){
                          passsword= data;
                        },
                        validator: (value){
                          if(value!.isEmpty){
                            return'password must not be empty';
                          }
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
                        height: 10,
                      ),
                      Center(
                        child: TextButton(
                            onPressed: (){},
                            child: Text(
                              'Forgot password?',
                              style: TextStyle(
                                color: Colors.red,
                                fontFamily: 'Sofia',
                                fontSize: 13,
                              ),
                            )),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: ElevatedButton(
                            onPressed: () async {
                              if(formKey.currentState!.validate()){
                                isLoading= true;
                                setState(() {

                                });
                                try {
                                  await loginUser();
                                  Navigator.pushNamed(context, 'ChatScreen',arguments: email);
                                } on FirebaseAuthException catch (e) {
                                  if (e.code == 'user-not-found') {
                                    showSnackBar(context,'No user found for that email.');
                                  } else if (e.code == 'wrong-password') {
                                    showSnackBar(context,'Wrong password provided for that user.');
                                  }
                                }catch (e) {
                                  showSnackBar(context,'there was an error');
                                }
                                isLoading= false;
                                setState(() {

                                });
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.deepOrange,
                              minimumSize:Size(240, 55)
                            ),
                            child: Text('LOGIN',
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
                          Text('Don\'t have an account?',
                            style: TextStyle(
                              color: Colors.brown,
                              fontFamily: 'Sofia',
                              fontSize: 12,
                            ),),
                          TextButton(
                            onPressed: (){
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context)=> SignUpScreen()));

                            },
                            child:  Text('Sign Up',
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
                                  width: 88,
                                  color: Colors.grey,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text('Sign in with',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Sofia',
                                    color: Colors.brown,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 1,
                                  width: 88,
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
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
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
                                minimumSize: Size(80, 50),
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
                                minimumSize: Size(80, 50),
                              ),
                            ),


                          ],
                        ),
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

  Future<void> loginUser() async {
    final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email!,
        password: passsword!,
    );
  }




}

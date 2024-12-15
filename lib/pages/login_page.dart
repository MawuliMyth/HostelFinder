import 'package:flutter/material.dart';
import 'package:importantlearning/componets/my_button.dart';
import 'package:importantlearning/componets/my_textfield.dart';
import 'package:importantlearning/componets/square_tile.dart';

 class LoginPage extends StatelessWidget {
   LoginPage({super.key,});

   // text editing controllers

   final usernameController = TextEditingController();
   final passwordController = TextEditingController();

   // sign user in method
   void signUserIn(){
   }

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.red.shade900,
       ),
       backgroundColor: Colors.white,
       body: SafeArea(
         child:
         Center(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
                  // to give space
                const SizedBox(height: 25),
               // logo
              Image.asset('lib/images/cici.jpeg'),

               const SizedBox(height: 25),

               // welcome back,you've been missed
               Text('Welcome back you\'ve been missed!',
               style: TextStyle(
                 fontSize: 16,
                 color: Colors.grey[700],
               ),
               ),
               const SizedBox(height: 15),

               // username  textfield
               MyTextfield(
                 controller: usernameController,
                 hintText: 'Email or mobile number',
                 obscureText: false,
               ),

              const SizedBox(height: 15),

               // password textfield
              MyTextfield(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),

               const SizedBox(height: 10),

              // forgot password?
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Text('Forgot Password?',
                       style: TextStyle(color: Colors.grey[600]),
                      ),
                    ),
                  ],
                ),
               const SizedBox(height: 25),

               // sign in button
                     MyButton(
                       onTap: signUserIn,
                     ),

               const SizedBox(height: 50),

               // or continue with

               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 25.0),
                 child: Row(
                   children: [
                     Expanded(
                         child: Divider(
                           thickness: 0.5,
                           color: Colors.grey[400],
                         ),
                     ),
                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 10.0),
                       child: Text('Or continue with',style: TextStyle(color: Colors.grey[700]),),
                     ),
                     Expanded(
                         child: Divider(
                       thickness: 0.5,
                       color: Colors.grey[400],
                     ),
                     ),
                   ],
                 ),
               ),

               const SizedBox(height: 25),

               //google + apple sign in button
                  Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // google button
                     SquareTile(imagePath: 'lib/images/gogo.png'),


                      SizedBox(width: 25),

                      //apple button
                      SquareTile(imagePath: 'lib/images/kiki.png'),
                    ],
                  ),
               const SizedBox(height: 30),

               // not a member? register now
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [

                   Text('Don\'t have an account?', style: TextStyle(color: Colors.grey[700]),),
                   const SizedBox(width: 4),
                   Text('Sign up',  style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold),),

                 ],
               )
           ],
           ),
         ),
       ),
     );
   }
 }

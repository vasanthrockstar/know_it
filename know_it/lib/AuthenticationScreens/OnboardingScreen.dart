import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:know_it/AuthenticationScreens/SignUp_Screen.dart';
import 'package:know_it/AuthenticationScreens/login_screen.dart';
import 'package:know_it/common_variables/app_colors.dart';
import 'package:know_it/common_variables/app_fonts.dart';
import 'package:know_it/common_variables/app_functions.dart';
import 'package:know_it/common_widgets/button_widget/to_do_button.dart';
import 'package:know_it/utilities/my_navigator.dart';


class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return WelcomeScreen(context);
  }
}

Widget WelcomeScreen(BuildContext context)
{
 return Container(
   color: Colors.white,
   child: SingleChildScrollView(
     child: Column(

       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: <Widget>[
         Container(
           color: Color(0xFF222222),
           height: MediaQuery.of(context).size.height/3,
           width: MediaQuery.of(context).size.width,
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.start,
             children: <Widget>[
             Padding(
               padding: const EdgeInsets.all(10.0),
               child: Text("Welcome \nto Know It..!",style: bigTitleStyle,),
             ),

             ],

           ),
         ),

         Container(
           child: Column(
             children: <Widget>[
               Center(
                 child: Padding(
                   padding: const EdgeInsets.all(40.0),
                   child: Column(
                     children: <Widget>[
                       Row(
                       children: <Widget>[
                         Column(
                           children: <Widget>[
                             CircleAvatar(backgroundColor: subBackgroundColor,radius: 6,),
                           ],
                         ),
                         SizedBox(width: 20,),
                         Column(
                           children: <Widget>[
                             Text("I want to remove the black and \ncurrently the TextField. ",style: descriptionStyle,),
                           ],
                         )
                       ],
                     ),
                       SizedBox(height: 10,),
                       Row(
                         children: <Widget>[
                           Column(
                             children: <Widget>[
                               CircleAvatar(backgroundColor: subBackgroundColor,radius: 6,),
                             ],
                           ),
                           SizedBox(width: 20,),
                           Column(
                             children: <Widget>[
                               Text("I want to remove the black and \n currently the TextField. ",style: descriptionStyle,),
                             ],
                           )
                         ],
                       ),
                       SizedBox(height: 10,),
                       Row(
                         children: <Widget>[
                           Column(
                             children: <Widget>[
                               CircleAvatar(backgroundColor: subBackgroundColor,radius: 6,),
                             ],
                           ),
                           SizedBox(width: 20,),
                           Column(
                             children: <Widget>[
                               Text("I want to remove the black and \ncurrently the TextField. ",style: descriptionStyle,),
                             ],
                           )
                         ],
                       ),
                       SizedBox(height: 10,),
                       Row(
                         children: <Widget>[
                           Column(
                             children: <Widget>[
                               CircleAvatar(backgroundColor: subBackgroundColor,radius: 6,),
                             ],
                           ),
                           SizedBox(width: 20,),
                           Column(
                             children: <Widget>[
                               Text("I want to remove the black and \ncurrently the TextField. ",style: descriptionStyle,),
                             ],
                           )
                         ],
                       ),
                    ]
                   ),
                 ),
               )

             ],
           ),

         ),

         Padding(
           padding: const EdgeInsets.all(20.0),
           child: Column(
             children: <Widget>[
               SizedBox(height: 10.0),
               ToDoButton(
                 assetName: 'images/google-lodgo.png',
                 text: 'Login',
                 textColor: backgroundColor,
                 backgroundColor: inActiveButtonBackgroundColor,
                 onPressed: () {Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) => LoginPage(),),
                 );}
               ),
               SizedBox(height: 10.0),
               ToDoButton(
                 assetName: 'images/google-lodgo.png',
                 text: 'Sign Up',
                 textColor: subBackgroundColor,
                 backgroundColor: backgroundColor,
                  onPressed: () {Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage(),),
                  );}
               ),
             ],
           ),
         ),
       ],
     ),
   ),
 );
}




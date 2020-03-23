import'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:know_it/AuthenticationScreens/Verify_Otp.dart';
import 'package:know_it/common_variables/app_colors.dart';
import 'package:know_it/common_variables/app_fonts.dart';
import 'package:know_it/common_widgets/button_widget/to_do_button.dart';
import 'package:know_it/common_widgets/loading_page.dart';
import 'package:know_it/common_widgets/offline_widgets/offline_widget.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: F_LoginPage(),
    );
  }
}

class F_LoginPage extends StatefulWidget {
  @override
  _F_LoginPageState createState() => _F_LoginPageState();
}

class _F_LoginPageState extends State<F_LoginPage> {
  int _n = 0;
  @override
  Widget build(BuildContext context) {
    return offlineWidget(context);

  }

  Widget offlineWidget (BuildContext context) {
    return CustomOfflineWidget(
      onlineChild: Padding(
        padding: const EdgeInsets.fromLTRB( 0, 0, 0, 0 ),
        child: Scaffold(
          body: SingleChildScrollView(child: _buildContent( context )),
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context) {

    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            color: Color(0xFF222222),
            height: MediaQuery.of(context).size.height/2.4,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                      children: <Widget>[
                        Text("Hello \nthere..!",style: bigTitleStyle,),
                      ]
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Please login with your details.",style: titleStyle,),
                )
              ],


            ),
          ),
          SizedBox(height: 150.0),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                new TextFormField(
                  //controller: _phoneNumberController,
                  textInputAction: TextInputAction.done,
                  obscureText: false,
                  //focusNode: _phoneNumberFocusNode,
//                onEditingComplete: () => _submit(context),
//                onChanged: model.updatePhoneNumber,
                  decoration: new InputDecoration(
                    prefixIcon: Icon(
                      Icons.phone,
                      color: backgroundColor,
                    ),
                    labelText: "Enter your Phone Number",
                    //fillColor: Colors.redAccent,
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(5.0),
                      borderSide: new BorderSide(),
                    ),
                  ),
                  validator: (val) {
                    if (val.length == 0) {
                      return " Mail Id cannot cannot be empty";
                    } else if (val.length == 10) {
                      return null;
                    } else {
                      return "Mail Id you entered is invalid.";
                    }
                  },
                  keyboardType: TextInputType.phone,
                  style: new TextStyle(
                    fontFamily: "Montserrat",
                  ),
                ),
                SizedBox(height: 20.0),
                ToDoButton(
                  assetName: 'images/googl-logo.png',
                  text: 'Get OTP',
                  textColor: subBackgroundColor,
                  backgroundColor: backgroundColor,
                  onPressed: (){
                    Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => VerifyOtpPage(),
                  ),
                  );}
                  //model.canSubmit ? () => _submit(context) : null, VerifyOtpPage
                ),
                SizedBox(height: 10.0),
                ToDoButton(
                  assetName: 'images/googl-logo.png',
                  text: 'back',
                  textColor: Colors.black,
                  backgroundColor: Colors.white,
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ),
        ],
    );
  }


//  Future<void> _submit(BuildContext context) async {
//    try {
//      await Firestore.instance
//          .collection('employees')
//          .where('employee_contact_number',
//          isEqualTo: '+91${_phoneNumberController.value.text}')
//          .snapshots()
//          .listen((data) => {
//        print('data=${data}'),
//        if (data.documents.length == 0)
//          {
//            model.submit(),
//            GoToPage(context, OTPPage(phoneNo: _phoneNumberController.value.text, newUser: true)),
//          }
//        else
//          {
//            model.submit(),
//            GoToPage(context, OTPPage(phoneNo: _phoneNumberController.value.text, newUser: false)),
//          }
//      });
//    } on PlatformException catch (e) {
//      PlatformExceptionAlertDialog(
//        title: 'Phone number failed',
//        exception: e,
//      ).show(context);
//    }
//  }
}
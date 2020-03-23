import'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:know_it/HomeScreens/Home_page.dart';
import 'package:know_it/common_variables/app_colors.dart';
import 'package:know_it/common_variables/app_fonts.dart';
import 'package:know_it/common_widgets/button_widget/to_do_button.dart';
import 'package:know_it/common_widgets/loading_page.dart';
import 'package:know_it/common_widgets/offline_widgets/offline_widget.dart';
import 'package:provider/provider.dart';



class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: F_SignUpPage(),
    );
  }
}

class F_SignUpPage extends StatefulWidget {
  @override
  _F_SignUpPageState createState() => _F_SignUpPageState();
}

class _F_SignUpPageState extends State<F_SignUpPage> {
  DateTime selectedDate = DateTime.now();
  var customFormat = DateFormat("dd MMMM yyyy 'at' HH:mm:ss 'UTC+5:30'");
  var customFormat2 = DateFormat("dd MMMM yyyy");

  Future<Null> showPicker(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: DateTime(2010),
      firstDate: DateTime(1930),
      lastDate: DateTime(2010),
    );
    if (picked != null){
      setState(() {
        print(customFormat.format(picked));
        selectedDate = picked;
      });
    }
  }

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
                child: Text("Please Sign Up with your details.",style: titleStyle,),
              )
            ],


          ),
        ),
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                GestureDetector(
//                    onTap: _captureImage,
//                    child: _profilePic == null ?
                   child: Container(
                      width: 120,
                      height: 120,
                      child: Padding(
                        padding: const EdgeInsets.only(top:50,left: 25),
                        child: Text('Add Photo',style: descriptionStyle,),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        shape: BoxShape.circle,),
                    )
//                    :
//                    Container(
//                      width: 120,
//                      height: 120,
//                      decoration: BoxDecoration(
//                          shape: BoxShape.circle,
//                          image: DecorationImage(
//                            image: FileImage(_profilePic),  // here add your image file path
//                            fit: BoxFit.fill,
//                          )),
//                    )
        ),

                SizedBox(height: 40.0),
                new TextFormField(
                  //controller: _phoneNumberController,
                  textInputAction: TextInputAction.done,
                  obscureText: false,
                  //focusNode: _phoneNumberFocusNode,
//                onEditingComplete: () => _submit(context),
//                onChanged: model.updatePhoneNumber,
                  decoration: new InputDecoration(
                    prefixIcon: Icon(
                      Icons.account_circle,
                      color: backgroundColor,
                    ),
                    labelText: "Enter your User Name",
                    //fillColor: Colors.redAccent,
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(5.0),
                      borderSide: new BorderSide(),
                    ),
                  ),
                  validator: (val) {
                    if (val.length == 0) {
                      return " User Name cannot cannot be empty";
                    } else if (val.length == 10) {
                      return null;
                    } else {
                      return "User Name you entered is invalid.";
                    }
                  },
                  keyboardType: TextInputType.phone,
                  style: new TextStyle(
                    fontFamily: "Montserrat",
                  ),
                ),
                SizedBox(height: 20.0),
                Padding(
                  padding: EdgeInsets.only(top: 0,bottom: 10),
                  child: Container(

                    child: RaisedButton(

                      color: Colors.white,
                      child: Container(
                        height: 60,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,

                          children: <Widget>[
                            Text(
                              'Select your date of birth.',
                              style: descriptionStyle,
                              textAlign: TextAlign.center,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  child: Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.date_range,
                                        size: 18.0,
                                        color: backgroundColor,
                                      ),
                                      SizedBox(width: 10,),
                                      Text(
                                          '${customFormat2.format(selectedDate)}',
                                          style: subTitleStyle
                                      ),
                                    ],
                                  ),
                                ),

                                Text(
                                    'Change',
                                    style: subTitleStyle
                                ),
                              ],
                            ),
                            SizedBox(width: 10,),
                          ],
                        ),
                      ),
                      onPressed: () => showPicker(context),

                    ),
                  ),

                ),
                SizedBox(height: 20.0),
                Container(
                  child: RichText(
                    textAlign: TextAlign.center,

                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'By continuing, You accept the Terms & Conditions Of the',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                          text: ' Terms of use',
                          style: TextStyle(
                            color: Color(0xFF71DB77),
                            fontSize: 15.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextSpan(
                          text: ' and',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                          text: ' Privacy Policies',
                          style: TextStyle(
                            color: Color(0xFF71DB77),
                            fontSize: 15.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                ToDoButton(
                  assetName: 'images/googl-logo.png',
                  text: 'Create',
                  textColor: subBackgroundColor,
                  backgroundColor: backgroundColor,
                  onPressed: () {Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage(),),
                  );}
                  //model.canSubmit ? () => _submit(context) : null,HomePage
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
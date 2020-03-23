import'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:know_it/AuthenticationScreens/SignUp_Screen.dart';
import 'package:know_it/common_variables/app_colors.dart';
import 'package:know_it/common_variables/app_fonts.dart';
import 'package:know_it/common_widgets/button_widget/to_do_button.dart';
import 'package:know_it/common_widgets/loading_page.dart';
import 'package:know_it/common_widgets/offline_widgets/offline_widget.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: F_HomePage(),
    );
  }
}

class F_HomePage extends StatefulWidget {
  @override
  _F_HomePageState createState() => _F_HomePageState();
}

class _F_HomePageState extends State<F_HomePage> {
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
          body: _buildContent( context ),
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context) {

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            color: Color(0xFF222222),
            height: MediaQuery.of(context).size.height/5,
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                          children: <Widget>[
                            Text("Know It..!",style: bigTitleStyle,),
                          ]
                      ),
                    ),
                  ],

                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30,left: 30),
                      child: CircleAvatar(
                        child: Text('VG'),
                        radius: 25.0,
                        backgroundColor: subBackgroundColor.withOpacity(.3),),
                    )
                  ],
                )
              ],
            ),
          ),
         
          Container(
            child: SingleChildScrollView(
              child: Column(
                  children: <Widget>[
                    
                  ],
                ),
            ),
          ),
          
        ],
      ),
    );
  }

}
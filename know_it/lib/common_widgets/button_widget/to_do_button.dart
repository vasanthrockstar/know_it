import 'package:flutter/cupertino.dart';
import 'custom_raised_button.dart';

class ToDoButton extends CustomRaisedButton{

  ToDoButton({
    @required String assetName,
    @required String text,
    double textSize,
    Color backgroundColor,
    Color textColor,
    VoidCallback onPressed,
  }) :  assert(assetName != null),
        assert(text != null),
        super(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Image.asset(assetName),
            Text(text,
              style: TextStyle(fontSize:17 , fontWeight: FontWeight.w600,fontFamily: 'Montserrat'),
            ),
            Opacity(
              opacity: 0.0,
              child: Image.asset(assetName),
            )
          ],
        ),
        color: backgroundColor,
        textColor: textColor,
        onPressed: onPressed,
      );

}
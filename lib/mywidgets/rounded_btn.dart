
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class rounded_btn extends StatelessWidget{

  final String btnname;
  final Icon?   icon;
  final Color?   bgColor;
  final TextStyle? textStyle;
  final VoidCallback? callback;


  rounded_btn({
    required
    this.btnname,
    this.icon,
    this.bgColor = Colors.teal,
    this.textStyle,
    this.callback
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: (){
          callback!();
        },
        child: icon != null? Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon!,
            Text(btnname,style: textStyle,)
          ],
    ):Text(btnname,style: textStyle,),
      style: ElevatedButton.styleFrom(
        primary: bgColor,
        backgroundColor: bgColor,
        shadowColor: bgColor,
        elevation: 5,
        textStyle: textStyle,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)))
      ),
    );
  }

}
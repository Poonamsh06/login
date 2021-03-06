
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';

import '../responshive.dart';

class FunctionCards extends StatelessWidget {
  const FunctionCards({
    Key? key,required this.text,required this.iconData,this.ontap
  }) : super(key: key);
  final VoidCallback? ontap;
  final String text;
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      //hoverColor: Colors.white38,
      onTap: ontap,
      child: Container(
        margin: EdgeInsets.all(10),
        //margin: const EdgeInsets.fromLTRB(20, 0, 0, 20),
        height: ResponsiveWidget.isSmallScreen(context)?70:150,
        width: ResponsiveWidget.isSmallScreen(context)?70:150,
        decoration: BoxDecoration(
          color: context.theme.backgroundColor,
          borderRadius: BorderRadius.circular(10),

        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(iconData,size: ResponsiveWidget.isSmallScreen(context)?20:40,),
            SizedBox(height: 5,),
            Text(text,style: ResponsiveWidget.isSmallScreen(context)?context.theme.textTheme.bodySmall:context.theme.textTheme.bodyMedium,)
          ],
        ),
      ),
    );
  }
}




class PujaCards extends StatelessWidget {
  const PujaCards({
    Key? key,required this.text,required this.iconData,this.ontap
  }) : super(key: key);
  final VoidCallback? ontap;
  final String text;
  final String iconData;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      //hoverColor: Colors.white38,
      onTap: ontap,
      child: Container(
        margin: EdgeInsets.all(10),
        //margin: const EdgeInsets.fromLTRB(20, 0, 0, 20),
        height: ResponsiveWidget.isSmallScreen(context)?70:150,
        width: ResponsiveWidget.isSmallScreen(context)?70:150,
        decoration: BoxDecoration(
          color: context.theme.backgroundColor,
          borderRadius: BorderRadius.circular(10),

        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height:  ResponsiveWidget.isSmallScreen(context)?20:40,
              width:  ResponsiveWidget.isSmallScreen(context)?20:40,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
              image: DecorationImage(image: NetworkImage(iconData))
              ),
            ), 
            SizedBox(height: 5,),
            Text(text,style: TextStyle(fontSize: ResponsiveWidget.isSmallScreen(context)?8:14))
          ],
        ),
      ),
    );
  }
}
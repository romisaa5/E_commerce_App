
import 'package:e_commerce/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomButtonSignupLogin extends StatelessWidget {
  const CustomButtonSignupLogin({super.key, required this.text, required this.color, required this.width, this.icon, this.onTap});
  final String text;
  final Color color;

  final double width;
  final IconData? icon;
   final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          width: width,
          height: 48.h,
          decoration: BoxDecoration(
             
              borderRadius: BorderRadius.circular(2),
              color: color),
          child: Center(
            child: Row(
              spacing: 10,
              mainAxisAlignment:MainAxisAlignment.center ,
              children: [
                Icon(icon,size: 18,),
                Text(
                  text,
                  style: Styles.textStyle16.copyWith(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ));
  }
}

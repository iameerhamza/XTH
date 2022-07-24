import 'package:flutter/material.dart';

class FilledButton extends StatelessWidget {
  final String title;
  final Gradient buttonGradients;
  final double width;
  final double height;
  final double btnRadius;
  final Color textColor;
  final Color btnColor, borderColor;
  final VoidCallback onPressed;
  final double fontSize;
  final bool isTitleUpperCase;

  FilledButton(
      {this.title,
      this.onPressed,
      this.width,
      this.isTitleUpperCase = true,
      this.height,
      this.textColor,
      this.btnColor,
      this.borderColor,
      this.btnRadius,
      this.buttonGradients,
      this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(btnRadius ?? 30))),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: btnColor ?? Colors.white,
          side: BorderSide(color: borderColor ?? Colors.transparent),
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(btnRadius ?? 30)),
          minimumSize: Size(width, height),
        ),
        onPressed: onPressed ?? () {},
        child: Text(
          title,
          style: TextStyle(
              color: textColor ?? Colors.white, fontSize: fontSize ?? 12, fontWeight: FontWeight.w500),
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
      ),
    );
  }
}

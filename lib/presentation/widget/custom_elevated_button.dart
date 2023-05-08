import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ol10_copy/presentation/color_pallete.dart';

class CustomElevatedButton extends StatelessWidget {
  final Color color;
  final Color textColor;
  final double width;
  final double? height;
  final double? fontSize;
  final FontWeight fontWeight;
  final void Function()? onPress;
  final String text;

  const CustomElevatedButton(
      {super.key,
      this.textColor = Colors.white,
      this.width = double.infinity,
      this.height,
      this.fontSize,
      this.fontWeight = FontWeight.w600,
      this.onPress,
      required this.text,
      this.color = ol10Magenta});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPress,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        child: Text(
          text,
          style: GoogleFonts.montserrat(
              color: textColor, fontSize: fontSize, fontWeight: fontWeight),
        ),
      ),
    );
  }
}

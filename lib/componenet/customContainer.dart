import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final String? title;
  const CustomContainer({
    Key? key,
    required this.height,
    this.title
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height / 2.6,
      decoration: BoxDecoration(
        color: Color(0XFFDD2C00),
        borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(85),
            bottomLeft: Radius.circular(85)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 40),
        child: Center(
          child: Text(
            title!,
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

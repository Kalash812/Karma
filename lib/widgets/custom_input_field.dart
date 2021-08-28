import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final double width;
  final String hintText;
  final TextEditingController controller;
  CustomInputField(
      {required this.width, required this.hintText, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: new BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color.fromRGBO(238, 238, 238, 1),
        shape: BoxShape.rectangle,
      ),
      child: new TextField(
        controller: controller,
        textAlign: TextAlign.start,
        decoration: new InputDecoration(
          hintText: hintText,
          contentPadding: EdgeInsets.only(left: 20),
          hintStyle: TextStyle(
            fontSize: 18,
            color: Colors.black87,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}

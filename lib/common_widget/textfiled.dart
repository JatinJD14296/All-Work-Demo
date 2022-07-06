import 'package:flutter/material.dart';

class CommonTextFiled extends StatelessWidget {
  Function function;
  TextEditingController controller;
  String labelText;
  Function validator;
  Function visibility;
  bool obscureText;
  bool showVisibility;

  CommonTextFiled(
      {this.function,
      this.controller,
      this.labelText,
      this.validator,
      this.visibility,
      this.obscureText,
      this.showVisibility});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: TextFormField(
          onTap: () {
            function();
          },
          showCursor: false,
          obscureText: obscureText ?? false,
          style: TextStyle(color: Colors.grey),
          controller: controller,
          decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: showVisibility == true
                ? InkWell(
                    onTap: () {
                      visibility();
                    },
                    child: obscureText == false
                        ? Icon(
                            Icons.visibility,
                            size: 28,
                            color: Colors.grey,
                          )
                        : Icon(
                            Icons.visibility_off,
                            size: 28,
                            color: Colors.grey,
                          ))
                : SizedBox(),
            labelText: labelText ?? 'Please enter your label',
            labelStyle: TextStyle(color: Colors.grey, fontSize: 22),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey)),
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey)),
            contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          ),
          validator: validator ?? null),
    );
  }
}

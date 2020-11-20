import 'package:flutter/material.dart';

class FormTextFieldComponent extends StatelessWidget {
  //Attributes
  final IconData icon;
  final String hintText;
  final FormFieldValidator onTap;
  final bool isPassword;
  final TextEditingController controller;

  //Constructor
  FormTextFieldComponent(
      {@required this.icon,
      @required this.hintText,
      @required this.isPassword,
      @required this.onTap,
      @required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      color: Colors.white,
      margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(
            icon,
            color: Colors.black,
          ),
          SizedBox(
            width: 10.0,
          ),
          Expanded(
            child: TextFormField(
              controller: controller,
              obscureText: this.isPassword,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                  hintStyle: TextStyle(color: Colors.black),
                  border: InputBorder.none,
                  hintText: hintText,
                  fillColor: Colors.black),
              validator: onTap,
            ),
          ),
        ],
      ),
    );
  }
}

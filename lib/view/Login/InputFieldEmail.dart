import 'package:flutter/material.dart';

import '../../component/utils.dart';

class InputFieldEmail extends StatefulWidget {
  //final TextEditingController controller;
  final FormFieldValidator<String>? validator;
  final TextInputType keyboardType;
  final String hintText;
  final IconData icon;

  InputFieldEmail({
    // required this.controller,
    this.validator,
    this.keyboardType = TextInputType.text,
    required this.hintText,
    required this.icon,
  });

  @override
  State<InputFieldEmail> createState() => _InputFieldEmailState();
}

class _InputFieldEmailState extends State<InputFieldEmail> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 2),
      width: size.width * 0.9,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Colors.grey.shade300,
          width: 1.2,
        ),
      ),
      child: TextFormField(
        //controller: widget.controller,
        validator: widget.validator,
        keyboardType: widget.keyboardType,
        cursorColor: color1,
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: TextStyle(
            color: Colors.grey.shade400,
            fontSize: 15,
          ),
          icon: Icon(
            widget.icon,
            color: Colors.grey.shade700,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}

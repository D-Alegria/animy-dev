import 'package:flutter/material.dart';

final textInputDecoration = InputDecoration(
  focusColor: Colors.red,
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color.fromRGBO(56, 48, 210, 1), width: 1.5),
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black, width: 1.5),
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
  ),
  errorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
    borderSide: BorderSide(color: Colors.red),
  ),
  focusedErrorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
    borderSide: BorderSide(color: Colors.red),
  ),
);
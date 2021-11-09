import 'package:flutter/material.dart';

AppBar mainAppBar(String title){
  return AppBar(
    title: Text(
        title,
      style: TextStyle(
        fontFamily: "SutonnyMJ",
        fontWeight: FontWeight.bold,
        fontSize: 24.0,
      ),
      maxLines: 1,
    ),
  );
}
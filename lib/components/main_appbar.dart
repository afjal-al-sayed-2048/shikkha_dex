import 'package:flutter/material.dart';

AppBar mainAppBar(String title){
  return AppBar(
    title: Text(
        title,
      style: TextStyle(
        fontWeight: FontWeight.bold,
      ),
      maxLines: 1,
    ),
  );
}
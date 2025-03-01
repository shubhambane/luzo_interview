import 'package:flutter/material.dart';

class AppTheme {
  static InputDecoration searchDecoration = InputDecoration(
    floatingLabelBehavior: FloatingLabelBehavior.never,
    contentPadding: EdgeInsets.symmetric(vertical: 2, horizontal: 4),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: Colors.grey.shade400),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: Colors.grey.shade400),
    ),
    prefixIcon: Icon(Icons.search, color: Colors.grey.shade600),
    labelText: 'Search for service..',
    labelStyle: TextStyle(
      color: Colors.grey.shade600,
      fontSize: 14,
    ),
  );
}

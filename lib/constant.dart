import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

final kTextFieldDecoration = InputDecoration(
  hintText: 'enter a text',
  hintStyle:   TextStyle(
    color: Colors.black54,
    fontWeight: FontWeight.w400,
    fontSize: 16.5.sp),
  enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide.none,
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: BorderSide.none,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
  ),
);
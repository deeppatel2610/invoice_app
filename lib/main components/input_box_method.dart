import 'package:flutter/material.dart';

import '../utils/colors.dart';

TextField inputBoxMethod({
  required String Text,
  required bool isNumber,
  required bool isAddress,
  required controller
}) {
  return TextField(
  controller: controller,
    maxLines: isAddress ? 3 : 1,
    keyboardType:
        isNumber ? const TextInputType.numberWithOptions() : TextInputType.text,
    decoration: InputDecoration(
      labelText: Text,
      labelStyle: TextStyle(
          fontWeight: FontWeight.w400, color: textColorForInput, fontSize: 15),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(color: primary, width: 2),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: primary,width: 1),
      ),
    ),
  );
}

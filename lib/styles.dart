import 'package:flutter/material.dart';

//TextStyles
const tempTextStyle= TextStyle(fontSize: 100, color: Colors.white);
const iconTextStyle=TextStyle(fontSize: 100,);
const messageTextStyle=TextStyle(fontSize: 60,
    fontFamily: 'Spartan MB',
    color: Colors.white);
const cityButtonStyle= TextStyle(fontSize: 35,fontWeight: FontWeight.bold);

//Decorations
const cityDecoration= InputDecoration(
  filled: true,
  fillColor: Colors.white,
  icon: Icon(
    Icons.location_city,
    color: Colors.white,
    size: 35.0,
  ),
  hintText: 'Enter City Name',
  hintStyle: TextStyle(color: Colors.black),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
    borderSide: BorderSide.none,
  ),
);
import 'package:flutter/material.dart';
import 'package:flutter_weather_app/dimen.dart';
import 'package:flutter_weather_app/styles.dart';

class CityScreen extends StatefulWidget {
  @override
  _CityScreenState createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  String cityName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/city_background.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 45.0,
                  ),
                ),
              ),
              Container(
                padding: containerPaddingSize,
                child: TextField(
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  decoration: cityDecoration,
                  onChanged: (value){
                    //print(value);
                    cityName=value;
                  },
                ),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.pop(context,cityName);
                },
                child: Text('Get Weather',style: cityButtonStyle,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

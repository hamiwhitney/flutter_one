// import "package:flutter/material.dart";
// import 'package:input/pages/homepage.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Homepage(),
//     );
//   }
// }


import 'package:flutter/material.dart'; // importing dart packages for flutter

void main() => runApp(MyApp()); // starting a dart code


// This is a function thats its use to store the list of country code

class MyApp extends StatefulWidget {
@override _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
String _selectedCountryCode = '+91';

final List<Map<String, String>> _countryCodes = [
{'code': '+91', 'name': 'India'},

{'code': '+1', 'name': 'USA'}, {'code': '+234', 'name': 'Nigeria'}, {'code': '+1', 'name': 'Canada'}, ];

// The screen of the App

@override
Widget build(BuildContext context) {
return MaterialApp(
home: Scaffold(
appBar: AppBar(
title: Text('My First Flutter App'), // The App BAr
),body: Center(
child: Column(
mainAxisAlignment: MainAxisAlignment.center, // align to the center
children: [
  Image.network("https://static.vecteezy.com/system/resources/previews/000/381/578/original/vector-abstract-colorful-wave-banner-background.jpg", width: 80.0, height: 40.0,),

  SizedBox(height: 40.0),


Text(
'Welcome to my first Flutter app', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold), ),

// importing image from the internet using URL

SizedBox(height: 20),
// Image.network(

// 'https://www.pinclipart.com/picdir/middle/541-5416602_dummy-profile-
// image-url-clipart.png', width: 100, height: 100, ),

// Dispaly the Country Code

SizedBox(height: 20), Row(
mainAxisAlignment: MainAxisAlignment.center, children: [
DropdownButton<String>(
value: _selectedCountryCode, onChanged: (newValue) {
setState(() { _selectedCountryCode = newValue!;
});
},
items: _countryCodes.map<DropdownMenuItem<String>>((country) {
return DropdownMenuItem<String>(

value: country['code'], child: Text('${country['name']} (${country['code']})'), );
}).toList(), ),

// Add text input here (Phone number)
SizedBox(width: 20), Expanded(
child: TextField(
decoration: InputDecoration(
labelText: 'Enter your phone number', border: OutlineInputBorder(), prefixText: _selectedCountryCode, ),keyboardType: TextInputType.phone, ), ), ], ),

// THis is the button part
SizedBox(height: 20), ElevatedButton(

onPressed: () {
print('Button pressed');
},child: Text('Press me'), ), ], ), ), ), );
}
}
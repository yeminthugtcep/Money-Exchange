import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:mm_rate/exchange/dart_object.dart';
import 'package:mm_rate/exchange/home_page.dart';

class AdvertisementPage extends StatefulWidget {
  AdvertisementPageState createState() {
    return AdvertisementPageState();
  }
}

class AdvertisementPageState extends State<AdvertisementPage> {
  final String api = "http://forex.cbm.gov.mm/api/latest";
  DartObjectPage? dob;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) {
        return HomePage();
      }), (route) => false);
      // var response = await http.get(Uri.parse(api));
      // if (response.statusCode == 200) {
      //   Map<String, dynamic> map = json.decode(response.body);
      //   dob = DartObjectPage.fromJson(map);
      //   setState(() {});
      //   Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      //     return HomePage();
      //   },
      //   settings: RouteSettings(arguments: dob)
      //   ),

      //   );
      // } else {
      //   print("error");
      // }
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          "images/cbm.jpg",
          fit: BoxFit.cover,
          height: 100,
          width: 100,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:mm_rate/exchange/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "MM Exchange",
    home: HomePage(),
  ));
}

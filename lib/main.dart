

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timerapp/homescreen.dart';
import 'package:timerapp/providerpage.dart';
import 'package:timerapp/timecard.dart';
void main() {
  runApp(ChangeNotifierProvider(create: (context)=>Providerclass(),
  child: MaterialApp(     debugShowCheckedModeBanner: false,home: Homescreen(),),)
  );
}


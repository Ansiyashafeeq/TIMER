import 'package:flutter/material.dart';
import 'package:timerapp/progress.dart';
import 'package:timerapp/providerpage.dart';
import 'package:timerapp/timecard.dart';
import 'package:timerapp/utils.dart';
import 'package:timerapp/timercontroller.dart';
import 'package:timerapp/timeroptions.dart';
import 'package:provider/provider.dart';
class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of< Providerclass >(context);
    return Scaffold(
      appBar: AppBar(title: Text('PROMODO',style: textStyle(25,Colors.white,FontWeight.w700),),elevation: 0,
        backgroundColor: renderColor(provider.currentState),
      actions: [
        IconButton(onPressed: (){
          Provider.of< Providerclass>(context ,listen: false).reset();
        }, icon: Icon(Icons.refresh,color: Colors.white,),iconSize: 40,)

      ],),
      backgroundColor: renderColor(provider.currentState),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              SizedBox(height: 15,),
              TimerCard(),

              SizedBox(height: 40,),
              TimeOptions(),
              SizedBox(height: 30,),
              TimeController(),
              SizedBox(height: 30,),
              Progress()
            ],
          ),
        ),
      ),
    );
  }
}


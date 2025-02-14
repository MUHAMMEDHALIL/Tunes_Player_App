import 'package:flutter/material.dart';
import 'package:flutter_application_2/Models/Tune_Models.dart';

// ignore: must_be_immutable
class TuneItem extends StatelessWidget {
   TuneItem({super.key, required this.tune});
  final TuneModels tune ; 
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: GestureDetector(    
        onTap: () {
          tune.playsound() ;
          print('san') ;
        },
       child: Container(
          color:tune.color,
        ), 
      ),
    );
  }
}


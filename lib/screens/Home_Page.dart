import 'package:flutter/material.dart';
import 'package:flutter_application_2/Models/Tune_Models.dart';
import 'package:flutter_application_2/components/TuneItem.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final List<TuneModels> tunes = const [
    TuneModels(color: Colors.cyan, sound: "note1.wav"),
    TuneModels(color: Colors.amber, sound: "note2.wav"),
    TuneModels(color: Colors.indigoAccent, sound: "note3.wav"),
    TuneModels(color: Colors.orange, sound: "note4.wav"),
    TuneModels(color: Colors.teal, sound: "note5.wav"),
    TuneModels(color: Colors.purple, sound: "note6.wav"),
    TuneModels(color: Colors.cyan, sound: "note7.wav"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text(
            "Flutter Tune",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w700, fontSize: 23),
          ),
        ),
        body: Column(
            children: tunes
                .map(
                  (e) => TuneItem(tune: e),
                )
                .toList()));

    /*List<Category> getitem() {
    List<Category> item = [] ; 
    for (var Color in tunecolors ) {
      item.add(Category(color: Color));
    }
    return item ;
  }*/
  }
}

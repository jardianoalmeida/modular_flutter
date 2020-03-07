import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:fluttermodular01/app/pages/home/home_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final homeController = Modular.get<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          ("Home"),
        ),
      ),
      body: Center(
        child: TextField(
          onChanged: (value){
            homeController.text = value;
          },
          decoration: InputDecoration(
            labelText: "Um texto Qualquer",
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //Navigator.pushNamed(context, "/other/${homeController.text}");
          Modular.to.pushNamed("/other/${homeController.text}");
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

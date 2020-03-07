import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:fluttermodular01/app/app_controller.dart';
import 'package:fluttermodular01/app/app_widget.dart';
import 'package:fluttermodular01/app/pages/other/other_page.dart';

import 'pages/home/home_controller.dart';
import 'pages/home/home_page.dart';

class AppModule extends MainModule{
  @override
  List<Bind> get binds => [
    Bind((i) => AppController()),
    Bind((i) => HomeController()),
  ];

  @override
  Widget get bootstrap => AppWidget();

  @override
  List<Router> get routers => [
    Router('/', child: (_, args) => HomePage()),
    Router('/other/:text', child: (_, args) => OtherPage(text: args.params['text'],)),
  ];

}
import 'package:flutter/material.dart';
import 'package:projeto_flutterando/app_controller.dart';

import 'home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppControler.instance,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
          primarySwatch: Colors.blue,
          brightness : AppControler.instance.isDartTheme
              ? Brightness.dark
              : Brightness.light,),
          home: HomePage(),
        );
      },
    );
  }
}

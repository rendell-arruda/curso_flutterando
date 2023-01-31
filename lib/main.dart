import 'package:flutter/material.dart';

main() {
  runApp(AppWidget(
    title: 'Flutter2',
  ));
}

class AppWidget extends StatelessWidget {
  final String title;

  const AppWidget({required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      home:HomePage() ,
    );
  }
}


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text('Flutterando')),
    );
  }
}

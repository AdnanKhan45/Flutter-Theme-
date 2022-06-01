
import 'package:flutter/material.dart';
import 'package:switch_theme_flutter/presentation/pages/preferences.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        actions: [
          IconButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Preferences()));
          }, icon: Icon(Icons.settings))
        ],
      ),
    );
  }
}

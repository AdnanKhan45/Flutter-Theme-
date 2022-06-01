import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:switch_theme_flutter/presentation/bloc/theme/theme_bloc.dart';
import 'package:switch_theme_flutter/presentation/pages/home_page.dart';
import 'package:switch_theme_flutter/presentation/pages/preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeBloc(),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          return MaterialApp(
            theme: state.themeData,
            debugShowCheckedModeBanner: false,
            home: HomePage(),
          );
        },
      ),
    );
  }
}

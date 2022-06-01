
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:switch_theme_flutter/app_themes.dart';
import 'package:switch_theme_flutter/presentation/bloc/theme/theme_bloc.dart';

class Preferences extends StatelessWidget {
  const Preferences({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Preferences"),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: ListView.builder(itemCount: AppTheme.values.length, itemBuilder: (context, index) {

          final singleTheme = AppTheme.values[index];
          return InkWell(
            onTap: () {
              BlocProvider.of<ThemeBloc>(context).add(ThemeChanged(theme: singleTheme));
            },
            child: Container(
              margin: EdgeInsets.all(8),

              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.black),
                color: appThemeData[singleTheme]?.primaryColor,
              ),
              child: Center(child: Text(singleTheme.toString(), style: appThemeData[singleTheme]?.textTheme.bodyText1,),),
            ),
          );
        }),
      ),
    );

  }
}

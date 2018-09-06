import 'package:allowatch/colors.dart';
import 'package:allowatch/screens/home_screen.dart';
import "package:flutter/material.dart";

class AllowatchApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            theme: _buildTheme(),
            home: HomeScreen()
        );
    }

    ThemeData _buildTheme(){
        ThemeData baseTheme = ThemeData.light();
        return baseTheme.copyWith(
            textTheme: baseTheme.textTheme.copyWith(
                title: baseTheme.textTheme.title.copyWith(
                    fontWeight: FontWeight.w300,
                    fontSize: 16.0
                ),
                display1: baseTheme.textTheme.display1.copyWith(
                    fontWeight: FontWeight.w300
                )
            ).apply(
                fontFamily: "VarelaRound"
            )
        );
    }
}
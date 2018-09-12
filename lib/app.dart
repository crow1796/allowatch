import 'package:allowatch/colors.dart';
import 'package:allowatch/screens/home_screen.dart';
import 'package:allowatch/screens/login_screen.dart';
import 'package:allowatch/screens/registration_screen.dart';
import 'package:allowatch/screens/wizard_screen.dart';
import "package:flutter/material.dart";

class AllowatchApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            theme: _buildTheme(),
            home: HomeScreen(),
            initialRoute: "/login",
            routes: {
                "/login": (BuildContext context) => LoginScreen(),
                "/registration": (BuildContext context) => RegistrationScreen(),
                "/wizard": (BuildContext context) => WizardScreen()
            }
        );
    }

    ThemeData _buildTheme(){
        ThemeData baseTheme = ThemeData.light();
        return baseTheme.copyWith(
            scaffoldBackgroundColor: kAllowatchScaffoldBackgroundColor,
            textTheme: baseTheme.textTheme.copyWith(
                display1: baseTheme.textTheme.display1.copyWith(
                    fontSize: 17.0,
                    color: kAllowatchPrimaryTextColor
                ),
                display2: baseTheme.textTheme.display2.copyWith(
                    fontSize: 19.0,
                    color: kAllowatchPrimaryTextColor
                ),
                display3: baseTheme.textTheme.display3.copyWith(
                    fontSize: 23.0,
                    color: kAllowatchPrimaryTextColor
                )
            ).apply(
                fontFamily: "JosefinSans"
            ),
            iconTheme: baseTheme.iconTheme.copyWith(
                color: kAllowatchPrimaryColor
            )
        );
    }
}
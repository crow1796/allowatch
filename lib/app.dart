import 'package:allowatch/colors.dart';
import 'package:allowatch/screens/home_screen.dart';
import 'package:allowatch/screens/login_screen.dart';
import 'package:allowatch/screens/registration_screen.dart';
import 'package:allowatch/screens/splash_screen.dart';
import 'package:allowatch/screens/wizard_screen.dart';
import "package:flutter/material.dart";

class AllowatchApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: _buildTheme(),
            home: HomeScreen(),
            initialRoute: "/splash",
            onGenerateRoute: (RouteSettings settings){
                switch(settings.name){
                    case "/splash": return AWCustomRouteBuilder(
                        widget: SplashScreen()
                    );
                    case "/login": return AWCustomRouteBuilder(
                        widget: LoginScreen()
                    );
                    case "/registration": return AWCustomRouteBuilder(
                        widget: RegistrationScreen()
                    );
                    case "/wizard": return AWCustomRouteBuilder(
                        widget: WizardScreen()
                    );
                }
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
                ),
                display4: baseTheme.textTheme.display4.copyWith(
                    fontSize: 35.0,
                    fontWeight: FontWeight.w500,
                    color: kAllowatchPrimaryTextColor
                ),
                subhead: baseTheme.textTheme.subhead.copyWith(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w700,
                    color: kAllowatchPrimaryTextColor
                ),
                headline: baseTheme.textTheme.headline.copyWith(
                    fontSize: 75.0,
                    fontWeight: FontWeight.w700,
                    color: kAllowatchPrimaryTextColor
                )
            ).apply(
                fontFamily: "JosefinSans"
            ),
            iconTheme: baseTheme.iconTheme.copyWith(
                color: kAllowatchPrimaryColor
            ),
        );
    }
}

class AWCustomRouteBuilder extends PageRouteBuilder{
    final Widget widget;
    AWCustomRouteBuilder({this.widget})
        : super(
            pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) => widget,
            transitionsBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) => child
        );
}
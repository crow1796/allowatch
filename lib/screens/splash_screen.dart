import 'dart:async';

import "package:flutter/material.dart";

class SplashScreen extends StatefulWidget {
    @override
    _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {

    Animation<double> _logoAnimation;
    AnimationController _logoAnimationController;

    @override
    void initState(){
        super.initState();
        _logoAnimationController = AnimationController(
            duration: Duration(milliseconds: 1000),
            vsync: this
        );
        _logoAnimation = Tween(
            begin: 0.0,
            end: 300.0
        ).animate(_logoAnimationController)
        ..addListener((){
            setState((){});
        });
        _logoAnimationController.forward();
        
        Timer(
            Duration(seconds: 3),
            (){
                Navigator.of(context).pop();
            }
        );
    }
    
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: Center(
                child: Container(
                    width: _logoAnimation.value,
                    height: _logoAnimation.value,
                    child: Image.asset(
                        "assets/images/logo.png",
                        scale: 0.5,
                    ),
                )
            )
        );
    }

    @override
    void dispose(){
        _logoAnimationController.dispose();
        super.dispose();
    }
}
import 'package:allowatch/widgets/aw_flat_button.dart';
import 'package:allowatch/widgets/aw_social_icon_button.dart';
import 'package:allowatch/widgets/aw_text_field.dart';
import "package:flutter/material.dart";

class AWLoginForm extends StatefulWidget {
    @override
    AWLoginFormState createState() => AWLoginFormState();
}

class AWLoginFormState extends State<AWLoginForm> {
    @override
    Widget build(BuildContext context) {
        return Container(
                padding: EdgeInsets.all(20.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                        SizedBox(height: 50.0),
                        Image.asset("assets/images/logo.png"),
                        Row(
                            children: <Widget>[
                                Padding(
                                    padding: EdgeInsets.only(top: 30.0, left: 20.0, bottom: 5.0),
                                    child: GestureDetector(
                                        child: Text(
                                            "Forgot Password?",
                                            style: Theme.of(context).textTheme.display1
                                        )
                                    )
                                )
                            ],
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
                            child: AWTextField(hintText: "Email Address", icon: Icons.email)
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
                            child: AWTextField(hintText: "Password", icon: Icons.lock, obscureText: true)
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                            child: AWFlatButton(text: "Login")
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 10.0, left: 20.0),
                            child: Row(
                                children: <Widget>[
                                    Text(
                                        "Dont't have an account?",
                                        style: Theme.of(context).textTheme.display1
                                    ),
                                    SizedBox(width: 5.0),
                                    GestureDetector(
                                        child: Text(
                                            "Sign Up",
                                            style: Theme.of(context).textTheme.display1.copyWith(
                                                color: Colors.blue
                                            )
                                        ),
                                        onTap: () => Navigator.of(context).pushNamed("/registration"),
                                    )
                                ],
                            )
                        ),
                        SizedBox(height: 30.0),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                                SizedBox(width: 30.0),
                                AWSocialIconButton(
                                    iconAsset: "assets/images/fb-icon.png",
                                    color: Color(0xff286dc8)
                                ),
                                AWSocialIconButton(
                                    iconAsset: "assets/images/tw-icon.png",
                                    color: Color(0xff46c2ff)
                                ),
                                AWSocialIconButton(
                                    iconAsset: "assets/images/google-icon.png",
                                    color: Color(0xfff32f44)
                                ),
                                SizedBox(width: 30.0)
                            ],
                        )
                    ],
                )
            );
    }
}
import 'package:allowatch/widgets/aw_flat_button.dart';
import 'package:allowatch/widgets/aw_social_icon_button.dart';
import 'package:allowatch/widgets/aw_text_field.dart';
import "package:flutter/material.dart";

class AWRegistrationForm extends StatefulWidget {
    @override
    AWRegistrationFormState createState() => AWRegistrationFormState();
}

class AWRegistrationFormState extends State<AWRegistrationForm> {
    @override
    Widget build(BuildContext context) {
        return Container(
                padding: EdgeInsets.all(20.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                        SizedBox(height: 50.0),
                        Image.asset("assets/images/logo.png"),
                        SizedBox(height: 20.0),
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
                            child: AWTextField(hintText: "Email Address", icon: Icons.email)
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
                            child: AWTextField(hintText: "Password", icon: Icons.lock, obscureText: true)
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
                            child: AWTextField(hintText: "Confirm Password", icon: Icons.lock, obscureText: true)
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                            child: AWFlatButton(text: "Create")
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 10.0, left: 20.0),
                            child: Row(
                                children: <Widget>[
                                    Text(
                                        "Already have an account?",
                                        style: Theme.of(context).textTheme.display1
                                    ),
                                    SizedBox(width: 5.0),
                                    GestureDetector(
                                        child: Text(
                                            "Sign In",
                                            style: Theme.of(context).textTheme.display1.copyWith(
                                                color: Colors.blue
                                            )
                                        ),
                                        onTap: () => Navigator.of(context).pop(),
                                    )
                                ],
                            )
                        )
                    ],
                )
            );
    }
}
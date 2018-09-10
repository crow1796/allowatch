import 'package:allowatch/widgets/aw_login_form.dart';
import "package:flutter/material.dart";

class LoginScreen extends StatefulWidget {
    @override
    LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: SafeArea(
                child: ListView(
                    children: <Widget>[
                        AWLoginForm()
                    ]
                )
            )
        );
    }
}

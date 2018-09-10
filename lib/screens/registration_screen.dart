import 'package:allowatch/widgets/aw_registration_form.dart';
import "package:flutter/material.dart";

class RegistrationScreen extends StatefulWidget {
    @override
    RegistrationScreenState createState() => RegistrationScreenState();
}

class RegistrationScreenState extends State<RegistrationScreen> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: SafeArea(
                child: ListView(
                    children: <Widget>[
                        AWRegistrationForm()
                    ]
                )
            )
        );
    }
}

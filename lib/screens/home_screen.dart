import 'package:allowatch/colors.dart';
import "package:flutter/material.dart";

class HomeScreen extends StatefulWidget {
    @override
    _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0.0,
                leading: IconButton(
                    icon: Icon(Icons.menu, color: kAllowatchPrimaryTextColor,),
                    onPressed: (){}
                ),
                title: Text(
                    "Allowatch",
                    style: Theme.of(context).textTheme.title
                ),
                centerTitle: true,
            ),
        );
    }
}
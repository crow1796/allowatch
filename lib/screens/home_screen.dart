import 'dart:io';

import 'package:allowatch/colors.dart';
import 'package:allowatch/widgets/aw_goal_progress_bar.dart';
import 'package:allowatch/widgets/aw_transactions_list.dart';
import "package:flutter/material.dart";

enum SettingsValues {
    ADD_NEW_GOAL,
    PREFERENCES,
    EXIT
}

class HomeScreen extends StatefulWidget {
    @override
    _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
    double _topPadding;
    double _heroHeight;
    double _maxHeroHeight;
    double _contentWidth;
    bool _isGoalsToggled = false;
    Duration _animatedContainerDuration = Duration(milliseconds: 200);
    Curve _animatedContainerCurve = Curves.ease;
    
    @override
    Widget build(BuildContext context) {
        _topPadding = MediaQuery.of(context).padding.top;
        _heroHeight = 230 + _topPadding;
        _maxHeroHeight = 580.0;
        _contentWidth = MediaQuery.of(context).size.width - 50.0;
        
        return Scaffold(
            body: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                    ConstrainedBox(
                        constraints: BoxConstraints(
                            minHeight: _heroHeight + 40,
                            maxHeight: _maxHeroHeight + 35.0
                        ),
                        child: LayoutBuilder(
                            builder: (_, viewportConstraints){
                                return Stack(
                                        children: <Widget>[
                                            AnimatedContainer(
                                                padding: EdgeInsets.only(left: 25.0, right: 25.0, top: _topPadding),
                                                height: _isGoalsToggled ? viewportConstraints.maxHeight : _heroHeight + 20,
                                                decoration: BoxDecoration(
                                                    color: kAllowatchPrimaryTextColor
                                                ),
                                                child: Column(
                                                    children: <Widget>[
                                                        Row(
                                                            children: <Widget>[
                                                                InkWell(
                                                                    child: Icon(Icons.notifications, color: kAllowatchSecondaryTextColor),
                                                                    onTap: (){},
                                                                ),
                                                                Expanded(
                                                                    child: Image.asset("assets/images/hero-logo.png")
                                                                ),
                                                                PopupMenuButton(
                                                                    child: Icon(Icons.settings, color: kAllowatchSecondaryTextColor),
                                                                    onSelected: (selected){
                                                                        switch(selected){
                                                                            case SettingsValues.EXIT:
                                                                                exit(0);
                                                                            break;
                                                                        }
                                                                    }, 
                                                                    itemBuilder: (BuildContext context) {
                                                                        return [
                                                                            PopupMenuItem(
                                                                                child: Text(
                                                                                    "Add New Goal",
                                                                                    style: Theme.of(context).textTheme.display1,
                                                                                ),
                                                                                value: SettingsValues.ADD_NEW_GOAL
                                                                            ),
                                                                            PopupMenuItem(
                                                                                child: Text(
                                                                                    "Preferences",
                                                                                    style: Theme.of(context).textTheme.display1,
                                                                                ),
                                                                                value: SettingsValues.PREFERENCES
                                                                            ),
                                                                            PopupMenuItem(
                                                                                child: Text(
                                                                                    "Exit",
                                                                                    style: Theme.of(context).textTheme.display1,
                                                                                ),
                                                                                value: SettingsValues.EXIT
                                                                            )
                                                                        ];
                                                                    },
                                                                )
                                                            ]
                                                        ),
                                                        Padding(
                                                            padding: EdgeInsets.only(top: 15.0),
                                                            child: Row(
                                                                children: <Widget>[
                                                                    Expanded(
                                                                        child: AWGoalProgressBar(
                                                                            mainWidth: _contentWidth,
                                                                            actualPercentage: .2,
                                                                        ),
                                                                    ),
                                                                    InkWell(
                                                                        child: Icon(_isGoalsToggled ? Icons.arrow_drop_up : Icons.arrow_drop_down, color: kAllowatchSecondaryTextColor),
                                                                        onTap: (){
                                                                            setState(() {
                                                                                _isGoalsToggled  = !_isGoalsToggled;
                                                                            });
                                                                        },
                                                                    )
                                                                ],
                                                            )
                                                        ),
                                                        AnimatedContainer(
                                                            duration: _animatedContainerDuration,
                                                            curve: _animatedContainerCurve,
                                                            child: AnimatedContainer(
                                                                duration: _animatedContainerDuration,
                                                                curve: _animatedContainerCurve,
                                                                decoration: BoxDecoration(
                                                                    color: kAllowatchPrimaryColorDark
                                                                ),
                                                                height: _isGoalsToggled ? (viewportConstraints.maxHeight * .5) : 0.0,
                                                                child: ListView(
                                                                    padding: EdgeInsets.all(0.0),
                                                                    children: <Widget>[
                                                                        Text("asdsad"),
                                                                    ],
                                                                )
                                                            )
                                                        ),
                                                        Padding(
                                                            padding: EdgeInsets.symmetric(vertical: 15.0),
                                                            child: Row(
                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                children: <Widget>[
                                                                    Text(
                                                                        "Balance: Today",
                                                                        style: Theme.of(context).textTheme.display2.copyWith(
                                                                            color: kAllowatchSecondaryTextColor
                                                                        ),
                                                                    )
                                                                ]
                                                            ),
                                                        ),
                                                        Row(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                            children: <Widget>[
                                                                Text("PHP",
                                                                    style: Theme.of(context).textTheme.subhead.copyWith(
                                                                        color: kAllowatchSecondaryTextColor,
                                                                        height: 1.3
                                                                    )),
                                                                Padding(
                                                                    padding: EdgeInsets.symmetric(horizontal: 5.0),
                                                                    child: Text(
                                                                        "100",
                                                                        style: Theme.of(context).textTheme.headline.copyWith(
                                                                            color: kAllowatchSecondaryTextColor,
                                                                        ),
                                                                    ),
                                                                ),
                                                                Text(".00",
                                                                    style: Theme.of(context).textTheme.subhead.copyWith(
                                                                        color: kAllowatchSecondaryTextColor,
                                                                        height: 1.3
                                                                    ))
                                                            ],
                                                        )
                                                    ]
                                                ), 
                                                duration: _animatedContainerDuration,
                                                curve: _animatedContainerCurve,
                                            ),
                                            AnimatedContainer(
                                                duration: _animatedContainerDuration,
                                                curve: _animatedContainerCurve,
                                                child: Positioned(
                                                bottom: _isGoalsToggled ? 20.0 : 0.0,
                                                left: (MediaQuery.of(context).size.width / 2) - 75,
                                                child: Container(
                                                        width: 150.0,
                                                        padding: EdgeInsets.symmetric(vertical: 15.0),
                                                        child: Text(
                                                            "Take",
                                                            textAlign: TextAlign.center,
                                                            style: Theme.of(context).textTheme.display2,
                                                        ),
                                                        decoration: BoxDecoration(
                                                            color: kAllowatchSecondaryColor,
                                                            borderRadius: BorderRadius.all(Radius.circular(35.0))
                                                        )
                                                    )
                                            ),
                                            )
                                        ]
                                    );
                            },
                        )
                    ),
                    Expanded(
                        child: AnimatedContainer(
                            duration: _animatedContainerDuration,
                            curve: _animatedContainerCurve,
                            padding: EdgeInsets.only(left: 25.0, right: 25.0, bottom: _isGoalsToggled ? 0.0 : 15.0, top:  _isGoalsToggled ? 10.0 : 25.0),
                            child: AWTransactionsList(
                                transactions: [
                                    {
                                        "name": "Load",
                                        "amount": 22.0,
                                        "type": "decrease",
                                    },
                                    {
                                        "name": "Load",
                                        "amount": 22.0,
                                        "type": "decrease",
                                    },
                                    {
                                        "name": "Load",
                                        "amount": 22.0,
                                        "type": "decrease",
                                    },
                                    {
                                        "name": "Load",
                                        "amount": 22.0,
                                        "type": "decrease",
                                    },
                                    {
                                        "name": "Load",
                                        "amount": 22.0,
                                        "type": "decrease",
                                    }
                                ]
                            )
                        )
                    )
                ]
            )
        );
    }
}
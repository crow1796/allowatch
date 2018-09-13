import 'package:allowatch/colors.dart';
import 'package:allowatch/widgets/aw_flat_button.dart';
import "package:flutter/material.dart";

class HomeScreen extends StatefulWidget {
    @override
    _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
    double _topPadding;
    double _heroHeight;
    
    @override
    Widget build(BuildContext context) {
        _topPadding = MediaQuery.of(context).padding.top;
        _heroHeight = MediaQuery.of(context).size.height * .30 + _topPadding;
        
        return Scaffold(
            body: Column(
                children: <Widget>[
                    Container(
                        height: _heroHeight + 20.0,
                        child: Stack(
                            children: <Widget>[
                                Container(
                                    padding: EdgeInsets.only(left: 25.0, right: 25.0, top: _topPadding + 15.0),
                                    height: _heroHeight,
                                    decoration: BoxDecoration(
                                        color: kAllowatchPrimaryTextColor
                                    ),
                                    child: Column(
                                        children: <Widget>[
                                            Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: <Widget>[
                                                    GestureDetector(
                                                        child: Icon(Icons.notifications, color: kAllowatchSecondaryTextColor),
                                                        onTap: (){},
                                                    ),
                                                    Image.asset("assets/images/hero-logo.png"),
                                                    GestureDetector(
                                                        child: Icon(Icons.settings, color: kAllowatchSecondaryTextColor),
                                                        onTap: (){},
                                                    )
                                                ]
                                            ),
                                            Padding(
                                                padding: EdgeInsets.symmetric(vertical: 20.0),
                                                child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: <Widget>[
                                                        Text(
                                                            "Balance",
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
                                    )
                                ),
                                Positioned(
                                    bottom: 0.0,
                                    left: (MediaQuery.of(context).size.width / 2) - 65,
                                    child: Container(
                                            width: 130.0,
                                            padding: EdgeInsets.symmetric(vertical: 15.0),
                                            child: Text(
                                                "Take",
                                                textAlign: TextAlign.center,
                                                style: Theme.of(context).textTheme.display1,
                                            ),
                                            decoration: BoxDecoration(
                                                color: kAllowatchSecondaryColor,
                                                borderRadius: BorderRadius.all(Radius.circular(35.0))
                                            ),
                                        )
                                )
                            ]
                        ),
                    )
                ]
            )
        );
    }
}
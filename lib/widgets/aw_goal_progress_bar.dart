import 'package:allowatch/colors.dart';
import "package:flutter/material.dart";

class AWGoalProgressBar extends StatelessWidget {
    final double mainWidth;
    final double actualPercentage;
    final double pastPercentage;
    final double futurePercentage;

    AWGoalProgressBar({ 
        this.mainWidth, 
        this.actualPercentage = 0.0,
        this.pastPercentage = 0.0,
        this.futurePercentage = 0.0
    });
    
    @override
    Widget build(BuildContext context) {
        return Stack(
                children: <Widget>[
                    Container(
                        height: 10.0,
                        width: mainWidth,
                        decoration: BoxDecoration(
                            color: kAllowatchPrimaryColorDark,
                            borderRadius: BorderRadius.all(Radius.circular(30.0))
                        )
                    ),
                    Container(
                        height: 10.0,
                        width: pastPercentage > 0 ? mainWidth * pastPercentage : 0.0,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.all(Radius.circular(30.0))
                        )
                    ),
                    Container(
                        height: 10.0,
                        width: futurePercentage > 0 ? mainWidth * futurePercentage : 0.0,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.all(Radius.circular(30.0))
                        )
                    ),
                    Container(
                        height: 10.0,
                        width: mainWidth * actualPercentage,
                        decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.all(Radius.circular(30.0))
                        )
                    )
                ],
            );
    }
}
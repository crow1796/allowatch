import 'package:allowatch/colors.dart';
import 'package:allowatch/widgets/aw_goal_progress_bar.dart';
import "package:flutter/material.dart";

class AWGoalsList extends StatelessWidget {
    final goals;

    AWGoalsList({ this.goals });
    
    @override
    Widget build(BuildContext context) {
        return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                    Expanded(
                        child: ListView.builder(
                            padding: EdgeInsets.all(0.0),
                            itemCount: goals.length,
                            itemBuilder: (BuildContext context, int index){
                                return Container(
                                    padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
                                    decoration: BoxDecoration(
                                        color: kAllowatchPrimaryColor
                                    ),
                                    child: Column(
                                        children: <Widget>[
                                            Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: <Widget>[
                                                    Text(
                                                        goals[index]["name"],
                                                        style: Theme.of(context).textTheme.display1.copyWith(
                                                            color: kAllowatchSecondaryTextColor
                                                        ),
                                                    ),
                                                    Text(
                                                        "PHP ${goals[index]["amount"]}",
                                                        style: Theme.of(context).textTheme.display1.copyWith(
                                                            color: kAllowatchSecondaryTextColor
                                                        ),
                                                    )
                                                ],
                                            ),
                                            SizedBox(
                                                height: 10.0
                                            ),
                                            AWGoalProgressBar(
                                                mainWidth: MediaQuery.of(context).size.width,
                                                actualPercentage: .2
                                            )
                                        ],
                                    )
                                );
                            }
                        ),
                    )
                ]
            );
    }
}
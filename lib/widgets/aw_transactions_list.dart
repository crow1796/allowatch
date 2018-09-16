import 'package:allowatch/colors.dart';
import 'package:allowatch/widgets/aw_goal_progress_bar.dart';
import "package:flutter/material.dart";

class AWTransactionsList extends StatelessWidget {
    final transactions;

    AWTransactionsList({ this.transactions });
    
    @override
    Widget build(BuildContext context) {
        return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                    Text(
                        "Transactions",
                        style: Theme.of(context).textTheme.display2
                    ),
                    Expanded(
                        child: ListView.builder(
                            padding: EdgeInsets.all(0.0),
                            itemCount: transactions.length,
                            itemBuilder: (BuildContext context, int index){
                                return Container(
                                    padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
                                    margin: EdgeInsets.only(top: 20.0),
                                    decoration: BoxDecoration(
                                        color: kAllowatchPrimaryColor,
                                        border: Border.all(
                                            width: 1.0,
                                            color: kAllowatchGreyColor
                                        ),
                                        borderRadius: BorderRadius.all(Radius.circular(4.0))
                                    ),
                                    child: Column(
                                        children: <Widget>[
                                            Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: <Widget>[
                                                    Text(
                                                        transactions[index]["name"],
                                                        style: Theme.of(context).textTheme.display2.copyWith(
                                                            color: kAllowatchSecondaryTextColor
                                                        ),
                                                    ),
                                                    Text(
                                                        "${transactions[index]["type"] == 'increase' ? '+' : '-'}PHP ${transactions[index]["amount"]}",
                                                        style: Theme.of(context).textTheme.display2.copyWith(
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
                                                actualPercentage: .2,
                                                pastPercentage: .3,
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
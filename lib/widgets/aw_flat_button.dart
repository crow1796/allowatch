import 'package:allowatch/colors.dart';
import "package:flutter/material.dart";

class AWFlatButton extends StatelessWidget {
    final text;

    AWFlatButton({this.text});
    
    @override
    Widget build(BuildContext context) {
        return GestureDetector(
            child: Material(
                child: Container(
                    width: double.infinity,
                    height: 60.0,
                    child: Center(
                        child: Text(
                            text,
                            style: Theme.of(context).textTheme.display2.copyWith(
                                color: kAllowatchSecondaryTextColor
                            ),
                        )
                    ),
                    decoration: BoxDecoration(
                        color: kAllowatchPrimaryColor,
                    )
                )
            )
        );
    }
}
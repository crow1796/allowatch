import 'package:allowatch/colors.dart';
import "package:flutter/material.dart";

class AWFlatButton extends StatelessWidget {
    final text;
    final onTap;

    AWFlatButton({this.text, this.onTap });
    
    @override
    Widget build(BuildContext context) {
        return Material(
                color: kAllowatchPrimaryColor,
                child: InkWell(
                    splashColor: kAllowatchSecondaryColor,
                    onTap: onTap ?? (){},
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
                        )
                    ),
                )
        );
    }
}
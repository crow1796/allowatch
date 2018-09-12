import "package:flutter/material.dart";

class AWFormLabel extends StatelessWidget {
    final label;
    AWFormLabel({ this.label });
    
    @override
    Widget build(BuildContext context) {
        return Container(
            margin: EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
                label,
                style: Theme.of(context).textTheme.display1,
            ),
        );
    }
}
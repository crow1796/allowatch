import 'package:allowatch/colors.dart';
import "package:flutter/material.dart";

class AWToggleSelector extends StatefulWidget {
    final List<Map> options;
    final bool multiple;
    
    AWToggleSelector({ this.options, this.multiple = false });
    
    @override
    _AWToggleSelectorState createState() => _AWToggleSelectorState();
}

class _AWToggleSelectorState extends State<AWToggleSelector> {
    @override
    Widget build(BuildContext context) {
        return Row(
            children: widget.options.map((option) => _AWToggleItem(text: option["text"], borderRadius: option["borderRadius"])).toList(),
        );
    }
}

class _AWToggleItem extends StatelessWidget {
    final text;
    final borderRadius;
    
    _AWToggleItem({ this.text, this.borderRadius });
    
    @override
    Widget build(BuildContext context) {
        return Container(
                width: 48.0,
                height: 48.0,
                child: Center(
                    child: Text(
                        text,
                        style: Theme.of(context).textTheme.display1,
                    )
                ),
                decoration: BoxDecoration(
                    color: kAllowatchGreyColor,
                    borderRadius: borderRadius
                )
            );
    }
}
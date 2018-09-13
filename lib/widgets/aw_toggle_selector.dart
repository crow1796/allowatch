import 'package:allowatch/colors.dart';
import "package:flutter/material.dart";

class AWToggleSelector extends StatefulWidget {
    final List<Map> options;
    final bool multiple;
    final model;
    final updated;
    
    AWToggleSelector({ this.options, this.multiple = false, @required this.model, this.updated });
    
    @override
    _AWToggleSelectorState createState() => _AWToggleSelectorState();
}

class _AWToggleSelectorState extends State<AWToggleSelector> {

    dynamic _modelPlaceholder;

    @override
    void initState(){
        super.initState();
        _modelPlaceholder = widget.model;
    }
    
    @override
    Widget build(BuildContext context) {
        return Row(
            children: widget.options.map((option) => _AWToggleItem(
                    text: option["text"], 
                    borderRadius: option["borderRadius"],
                    onTap: (){
                        if(widget.multiple) _modelPlaceholder.add(option);
                        _modelPlaceholder = option;
                        if(widget.updated) widget.updated(_modelPlaceholder);
                    }
                )
            ).toList(),
        );
    }
}

class _AWToggleItem extends StatelessWidget {
    final text;
    final borderRadius;
    final onTap;
    
    _AWToggleItem({ this.text, this.borderRadius, this.onTap });
    
    @override
    Widget build(BuildContext context) {
        return GestureDetector(
            child: Container(
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
            ),
            onTap: onTap
        );
    }
}
import 'package:allowatch/colors.dart';
import "package:flutter/material.dart";

class AWTextField extends StatefulWidget {
    final hintText;
    final icon;
    final obscureText;
    final TextInputType type;
    
    AWTextField({ this.hintText, this.icon, this.obscureText = false, this.type = TextInputType.text });
    
    @override
    _AWTextFieldState createState() => _AWTextFieldState();
}

class _AWTextFieldState extends State<AWTextField> {
    @override
    Widget build(BuildContext context) {
        return Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                child: TextField(
                    obscureText: widget.obscureText,
                    style: Theme.of(context).textTheme.display2,
                    decoration: InputDecoration(
                        hintText: widget.hintText,
                        border: InputBorder.none,
                        icon: widget.icon is IconData ? Icon(widget.icon) : null,
                        hintStyle: Theme.of(context).textTheme.display2.copyWith(
                            color: kAllowatchGreyColor
                        )
                    ),
                    keyboardType: widget.type,
                ),
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 1.0,
                        color: kAllowatchGreyColor,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(3.0))
                ),
            );
    }
}
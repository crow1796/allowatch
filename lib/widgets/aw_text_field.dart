import "package:flutter/material.dart";

class AWTextField extends StatefulWidget {
    final hintText;
    final icon;
    final obscureText;
    
    AWTextField({ this.hintText, this.icon, this.obscureText = false });
    
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
                        icon: Icon(widget.icon),
                        hintStyle: Theme.of(context).textTheme.display2.copyWith(
                            color: Colors.grey
                        )
                    )
                ),
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 1.0,
                        color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(3.0))
                ),
            );
    }
}
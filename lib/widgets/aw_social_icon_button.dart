import "package:flutter/material.dart";

class AWSocialIconButton extends StatelessWidget {
    final iconAsset;
    final color;
    
    AWSocialIconButton({ this.iconAsset, this.color });
    
    @override
    Widget build(BuildContext context) {
        return GestureDetector(
                child: Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: color
                    ),
                    child: Image.asset(iconAsset),
                )
            );
    }
}
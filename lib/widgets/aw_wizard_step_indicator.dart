import 'package:allowatch/colors.dart';
import "package:flutter/material.dart";

class AWWizardStepIndicator extends StatelessWidget {
    final String step;
    final bool isActive;

    AWWizardStepIndicator({ this.step, this.isActive = false });
    
    @override
    Widget build(BuildContext context) {
        return Container(
                width: 40.0,
                height: 40.0,
                child: Center(
                    child: Text(
                        step,
                        style: Theme.of(context).textTheme.display2
                    )
                ),
                decoration: BoxDecoration(
                    color: isActive ? kAllowatchSecondaryColor : Colors.transparent,
                    border: Border.all(
                        color: kAllowatchGreyColor
                    )
                ),
            );
    }
}
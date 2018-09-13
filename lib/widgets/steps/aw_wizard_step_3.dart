import 'package:allowatch/widgets/aw_form_label.dart';
import 'package:allowatch/widgets/aw_text_field.dart';
import 'package:allowatch/widgets/aw_toggle_selector.dart';
import "package:flutter/material.dart";

class AWWizardStep3 extends StatefulWidget {
    @override
    _AWWizardStep3State createState() => _AWWizardStep3State();
}

class _AWWizardStep3State extends State<AWWizardStep3> {
    @override
    Widget build(BuildContext context) {
        return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 30.0),
                    child: Center(
                        child: Text(
                            "Start Saving!",
                            style: Theme.of(context).textTheme.display4,
                        )
                    )
                ),
                Image.asset("assets/images/final.png")
            ],
        );
    }
}
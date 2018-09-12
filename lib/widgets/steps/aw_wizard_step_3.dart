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
                    padding: EdgeInsets.only(bottom: 15.0, top: 25.0),
                    child: Text(
                        "Set your first Goal",
                        style: Theme.of(context).textTheme.display3,
                    )
                ),
                AWFormLabel(label: "What's your goal? e.g. Car, Rental, Bills"),
                AWTextField(hintText: "Your Goal"),
                AWFormLabel(label: "Amount"),
                AWTextField(hintText: "0.00", type: TextInputType.number),
                AWFormLabel(label: "Is it recurring?"),
                AWToggleSelector(
                    options: [
                        {
                            "text": "Yes",
                            "borderRadius": BorderRadius.horizontal(left: Radius.circular(7.0))
                        },
                        {
                            "text": "No",
                            "borderRadius": BorderRadius.horizontal(right: Radius.circular(7.0))
                        }
                    ]
                )
            ],
        );
    }
}
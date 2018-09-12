import 'package:allowatch/widgets/aw_form_label.dart';
import 'package:allowatch/widgets/aw_text_field.dart';
import 'package:allowatch/widgets/aw_toggle_selector.dart';
import "package:flutter/material.dart";

class AWWizardStep1 extends StatefulWidget {
    @override
    _AWWizardStep1State createState() => _AWWizardStep1State();
}

class _AWWizardStep1State extends State<AWWizardStep1> {
    List<Map> _dayOptions;

    @override
    void initState(){
        super.initState();
        _dayOptions = [
            {
                "text": "Sun",
                "borderRadius": BorderRadius.horizontal(left: Radius.circular(7.0))
            },
            {
                "text": "Mon",
            },
            {
                "text": "Tue",
            },
            {
                "text": "Wed",
            },
            {
                "text": "Thu",
            },
            {
                "text": "Fri",
            },
            {
                "text": "Sat",
                "borderRadius": BorderRadius.horizontal(right: Radius.circular(7.0))
            }
        ];
    }
    
    @override
    Widget build(BuildContext context) {
        return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(bottom: 15.0, top: 25.0),
                    child: Text(
                        "Set your Allowance",
                        style: Theme.of(context).textTheme.display3,
                    )
                ),
                AWFormLabel(label: "On what days do you get your allowance?"),
                AWToggleSelector(
                    options: _dayOptions,
                    multiple: true
                ),
                AWFormLabel(label: "How much do you get on those days?"),
                AWTextField(hintText: "0.00", type: TextInputType.number)
            ],
        );
    }
}
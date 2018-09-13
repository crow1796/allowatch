import 'package:allowatch/colors.dart';
import 'package:allowatch/widgets/aw_flat_button.dart';
import 'package:allowatch/widgets/aw_form_label.dart';
import 'package:allowatch/widgets/aw_text_field.dart';
import 'package:allowatch/widgets/aw_wizard_step_indicator.dart';
import 'package:allowatch/widgets/steps/aw_wizard_step_1.dart';
import 'package:allowatch/widgets/steps/aw_wizard_step_2.dart';
import 'package:allowatch/widgets/steps/aw_wizard_step_3.dart';
import "package:flutter/material.dart";

class WizardScreen extends StatefulWidget {
    @override
    _WizardScreenState createState() => _WizardScreenState();
}

class _WizardScreenState extends State<WizardScreen> {

    final List<Widget> _wizardContents = [
        AWWizardStep1(),
        AWWizardStep2(),
        AWWizardStep3()
    ];

    int _currentStep = 0;
    
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: SafeArea(
                child: Column(
                        children: <Widget>[
                            Expanded(
                                child: ListView(
                                children: <Widget>[
                                  Container(
                                      padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
                                      child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                              Image.asset("assets/images/inline-logo.png"),
                                              SizedBox(height: 18.0),
                                              Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: <Widget>[
                                                      AWWizardStepIndicator(step: "1", isActive: (_currentStep == 0)),
                                                      AWWizardStepIndicator(step: "2", isActive: (_currentStep == 1)),
                                                      AWWizardStepIndicator(step: "3", isActive: (_currentStep == 2)),
                                                  ],
                                              ),
                                              Stack(
                                                  children: <Widget>[
                                                      _wizardContents[_currentStep]
                                                  ],
                                              )
                                          ],
                                      ),
                                  ),
                                ],
                              ),
                            ),
                            _buildControlButtons()
                        ],
                    )
            )
        );
    }

    Widget _buildControlButtons(){
        List<Widget> buttons = [];

        if(_currentStep > 0){
            buttons.add(Expanded(
                        child: AWFlatButton(
                            text: "Back",
                            onTap: (){
                                setState(() => _currentStep--);
                            },
                            color: kAllowatchGreyColor
                        ),
                    ));
        }

        buttons.add(Expanded(
                child: AWFlatButton(
                    text: _currentStep == (_wizardContents.length - 1) ? "Finish" : "Next",
                    onTap: (){
                        if(_currentStep < (_wizardContents.length - 1)){
                            setState((){
                                _currentStep++;
                            });
                            return true;
                        }
                        Navigator.of(context).pop();
                    },
                )
            ));
        
        return Align(
                alignment: Alignment.bottomLeft,
                child: Row(
                    children: buttons
                )
            );
    }
}
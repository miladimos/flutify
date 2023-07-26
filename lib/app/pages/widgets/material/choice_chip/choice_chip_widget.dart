import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChoiceChipWidget extends StatefulWidget {
  const ChoiceChipWidget({super.key});

  @override
  State<ChoiceChipWidget> createState() => _ChoiceChipWidgetState();
}

class _ChoiceChipWidgetState extends State<ChoiceChipWidget> {
  bool isChoiceSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(children: [
            ChoiceChip(
              label: Text("Choice"),
              pressElevation: 5,
              avatar: CircleAvatar(child: Icon(Icons.add)),
              selected: isChoiceSelected,
              onSelected: (bool value) {
                setState(() {
                  isChoiceSelected = value;
                });
              },
            ),
          ]),
        ),
      ),
    );
  }
}

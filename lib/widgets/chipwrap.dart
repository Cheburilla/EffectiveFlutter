import 'package:flutter/material.dart';
import 'package:sber_offline/utils/S.dart';

class InputChipExample extends StatefulWidget {
  const InputChipExample({super.key});

  @override
  InputChipExampleState createState() => InputChipExampleState();
}

class InputChipExampleState extends State<InputChipExample>
    with TickerProviderStateMixin {
  _getChips(context) {
    return [
      S.of(context).food,
      S.of(context).selfimproving,
      S.of(context).tech,
      S.of(context).home,
      S.of(context).freetime,
      S.of(context).selfcare,
      S.of(context).science,
    ];
  }

  final List<bool> _selected = [
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  _buildChips() {
    List<Widget> chips = <Widget>[];
    var options = _getChips(context);
    for (int i = 0; i < options.length; i++) {
      FilterChip filterChip = FilterChip(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        side: BorderSide.none,
        selected: _selected[i],
        label: Text(
          options[i],
          style: TextStyle(
              fontStyle: Theme.of(context).textTheme.labelMedium?.fontStyle,
              color: Colors.black),
        ),
        backgroundColor: const Color.fromRGBO(0, 0, 0, 0.08),
        selectedColor: Theme.of(context).primaryColor,
        onSelected: (bool selected) {
          setState(
            () {
              _selected[i] = selected;
            },
          );
        },
      );

      chips.add(filterChip);
    }
    return chips;
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.start,
      spacing: 4,
      runSpacing: 4,
      children: _buildChips(),
    );
  }
}

import 'package:flutter/material.dart';

import '../../core/dimens.dart';
import 'percentage.dart';

class CreateRhapsaveModal extends StatefulWidget {
  const CreateRhapsaveModal({super.key});

  @override
  State<CreateRhapsaveModal> createState() => _CreateRhapsaveModalState();
}

class _CreateRhapsaveModalState extends State<CreateRhapsaveModal> {
  var _percent = 0;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        vSpace(sSecondaryPadding / 2),
        Container(
          width: 60,
          height: 5,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(sSecondaryPadding / 2),
          ),
        ),
        ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(sPadding),
          children: [
            Text(
              'Awesome',
              style: theme.textTheme.headline4?.copyWith(
                fontWeight: FontWeight.w100,
              ),
            ),
            Text(
              'What percentage of your income would you like to save?',
              style: theme.textTheme.headline5?.copyWith(
                fontWeight: FontWeight.w900,
              ),
            ),
            vSpace(sSecondaryPadding / 2),
            SelectPercentage(
              selected: _percent,
              onValueChanged: (value) {
                setState(() {
                  _percent = value;
                });
              },
            ),
            const SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: null,
                child: Text('Enter Manually'),
              ),
            ),
            vSpace(sSecondaryPadding / 2),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Create Rhapsave'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

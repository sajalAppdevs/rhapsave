import 'package:flutter/material.dart';

import '../../core/dimens.dart';
import 'percentage.dart';

class CreateRhapsaveModal extends StatelessWidget {
  const CreateRhapsaveModal({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.all(sPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Awesome',
            style: theme.textTheme.headline4,
          ),
          Text(
            'What percentage of your income would you like to save?',
            style: theme.textTheme.headline5?.copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
          vSpace(sSecondaryPadding / 2),
          const SelectPercentage(),
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
              onPressed: () {},
              child: const Text('Create Rhapsave'),
            ),
          ),
        ],
      ),
    );
  }
}

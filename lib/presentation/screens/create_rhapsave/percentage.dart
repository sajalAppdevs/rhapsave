import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:rhapsave/presentation/core/dimens.dart';

class SelectPercentage extends StatelessWidget {
  const SelectPercentage({super.key});

  @override
  Widget build(BuildContext context) {
    final items = List.generate(10, (i) => (i + 1) * 10);
    return Column(
      children: items
          .slices(items.length ~/ 2)
          .map((row) => Padding(
                padding: const EdgeInsets.only(bottom: sSecondaryPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: row
                      .map(
                        (item) =>
                            _PercentageItem(percent: item, selected: false),
                      )
                      .toList(),
                ),
              ))
          .toList(),
    );
  }
}

class _PercentageItem extends StatelessWidget {
  final int percent;
  final bool selected;

  const _PercentageItem(
      {super.key, required this.percent, required this.selected});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      width: 65,
      padding: const EdgeInsets.symmetric(
        horizontal: sSecondaryPadding,
        vertical: sSecondaryPadding / 2,
      ),
      decoration: BoxDecoration(
        color: selected ? theme.colorScheme.primary : const Color(0x33B3B333),
        borderRadius: BorderRadius.circular(sSecondaryPadding / 2),
      ),
      child: Text(
        '${percent.toString()}%',
        style: theme.textTheme.caption,
      ),
    );
  }
}

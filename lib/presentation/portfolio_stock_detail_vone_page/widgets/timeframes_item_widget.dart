import '../models/timeframes_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hari_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class TimeframesItemWidget extends StatelessWidget {
  TimeframesItemWidget(
    this.timeframesItemModelObj, {
    Key? key,
    this.onSelectedChipView,
  }) : super(
          key: key,
        );

  TimeframesItemModel timeframesItemModelObj;

  Function(bool)? onSelectedChipView;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        canvasColor: Colors.transparent,
      ),
      child: RawChip(
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          timeframesItemModelObj.h!,
          style: TextStyle(
            color: theme.colorScheme.onPrimaryContainer,
            fontSize: 12.fSize,
            fontFamily: 'Eudoxus Sans',
            fontWeight: FontWeight.w700,
          ),
        ),
        selected: (timeframesItemModelObj.isSelected ?? false),
        backgroundColor: Colors.transparent,
        selectedColor: Colors.transparent,
        onSelected: (value) {
          onSelectedChipView?.call(value);
        },
      ),
    );
  }
}

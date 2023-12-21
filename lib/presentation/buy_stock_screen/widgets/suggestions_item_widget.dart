import '../models/suggestions_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hari_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class SuggestionsItemWidget extends StatelessWidget {
  SuggestionsItemWidget(
    this.suggestionsItemModelObj, {
    Key? key,
    this.onSelectedChipView,
  }) : super(
          key: key,
        );

  SuggestionsItemModel suggestionsItemModelObj;

  Function(bool)? onSelectedChipView;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 27.h,
        vertical: 9.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        suggestionsItemModelObj.item!,
        style: TextStyle(
          color: theme.colorScheme.onPrimaryContainer,
          fontSize: 16.fSize,
          fontFamily: 'Eudoxus Sans',
          fontWeight: FontWeight.w700,
        ),
      ),
      selected: (suggestionsItemModelObj.isSelected ?? false),
      backgroundColor: appTheme.pink50,
      selectedColor: appTheme.pink50,
      shape: (suggestionsItemModelObj.isSelected ?? false)
          ? RoundedRectangleBorder(
              side: BorderSide(
                color: theme.colorScheme.onPrimaryContainer.withOpacity(0.6),
                width: 1.h,
              ),
              borderRadius: BorderRadius.circular(
                16.h,
              ),
            )
          : RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(
                16.h,
              ),
            ),
      onSelected: (value) {
        onSelectedChipView?.call(value);
      },
    );
  }
}

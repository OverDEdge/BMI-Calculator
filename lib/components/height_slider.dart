import 'package:flutter/material.dart';

import 'package:bmi_calculator/constants.dart';

class HeightSlider extends StatelessWidget {
  final double minHeight;
  final double maxHeight;
  final int height;
  final Function updateHeight;

  HeightSlider({
    @required this.height,
    @required this.minHeight,
    @required this.maxHeight,
    @required this.updateHeight,
  });

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        inactiveTrackColor: inactiveButtonColor,
        activeTrackColor: Theme.of(context).cardColor,
        thumbColor: Theme.of(context).buttonColor,
        thumbShape: RoundSliderThumbShape(
          enabledThumbRadius: thumbRadius,
        ),
        overlayShape: RoundSliderOverlayShape(
          overlayRadius: thumbOverlayRadius,
        ),
        overlayColor:
            Theme.of(context).buttonColor.withOpacity(thumbOverlayOpacity),
      ),
      child: Slider(
        value: height.toDouble(),
        min: minHeight,
        max: maxHeight,
        onChanged: updateHeight,
      ),
    );
  }
}

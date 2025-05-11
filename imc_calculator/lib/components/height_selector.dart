import 'package:flutter/material.dart';
import 'package:imc_calculator/core/app_color.dart';
import 'package:imc_calculator/core/box_decorations.dart';
import 'package:imc_calculator/core/text_styles.dart';

class HeightSelector extends StatefulWidget {
  final double height;
  final Function(double newHeight) onChangedSlider;
  const HeightSelector({
    super.key,
    required this.height,
    required this.onChangedSlider,
  });

  @override
  State<HeightSelector> createState() => _HeightSelectorState();
}

class _HeightSelectorState extends State<HeightSelector> {
  // Inicial Height
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
      child: Container(
        decoration: BoxDecorations.containerDecoration,
        child: Column(
          children: [
            SizedBox(height: 16),
            Text('ALTURA', style: TextStyles.bodyText),
            Text(
              '${widget.height.toStringAsFixed(0)} cm',
              style: TextStyles.midText,
            ),
            Slider(
              value: widget.height,
              onChanged: widget.onChangedSlider,
              min: 130,
              max: 220,
              divisions: 90,
              label: widget.height.toStringAsFixed(0),
              activeColor: AppColor.primary,
            ),
          ],
        ),
      ),
    );
  }
}

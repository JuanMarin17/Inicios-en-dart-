import 'package:flutter/material.dart';
import 'package:imc_calculator/core/app_color.dart';
import 'package:imc_calculator/core/text_styles.dart';

class NumberSelector extends StatefulWidget {
  final String title;
  final int number;
  final Function() onIncrement;
  final Function() onDecrement;

  const NumberSelector({
    super.key,
    required this.title,
    required this.number,
    required this.onIncrement,
    required this.onDecrement,
  });

  @override
  State<NumberSelector> createState() => _NumberSelectorState();
}

class _NumberSelectorState extends State<NumberSelector> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8, left: 8, right: 8),
        child: Container(
          decoration: BoxDecoration(
            color: AppColor.backgroundComponent,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                Text(widget.title, style: TextStyles.bodyText),
                Text(widget.number.toString(), style: TextStyles.midText),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FloatingActionButton(
                      heroTag: null,
                      onPressed: () {
                        widget.onDecrement();
                      },
                      shape: CircleBorder(),
                      backgroundColor: AppColor.primary,
                      foregroundColor: Colors.white,
                      child: Icon(Icons.remove),
                    ),
                    SizedBox(width: 25),
                    FloatingActionButton(
                      heroTag: null,
                      onPressed: () {
                        widget.onIncrement();
                      },
                      shape: CircleBorder(),
                      backgroundColor: AppColor.primary,
                      foregroundColor: Colors.white,
                      child: Icon(Icons.add),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:imc_calculator/components/gender_selector.dart';
import 'package:imc_calculator/components/height_selector.dart';
import 'package:imc_calculator/components/number_selector.dart';
// import 'package:imc_calculator/core/app_color.dart';
import 'package:imc_calculator/core/button_styles.dart';
import 'package:imc_calculator/core/text_styles.dart';
import 'package:imc_calculator/screens/imc_result_screen.dart';

class ImcHomeScreen extends StatefulWidget {
  const ImcHomeScreen({super.key});

  @override
  State<ImcHomeScreen> createState() => _ImcHomeScreenState();
}

class _ImcHomeScreenState extends State<ImcHomeScreen> {
  int selectedAge = 30;
  int selectedWeight = 90;
  double selectedHeight = 160;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GenderSelector(),
        HeightSelector(
          height: selectedHeight,
          onChangedSlider: (newHeight) {
            setState(() {
              selectedHeight = newHeight;
            });
          },
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
          child: Row(
            children: [
              NumberSelector(
                title: 'Peso',
                number: selectedWeight,
                onIncrement: () {
                  setState(() {
                    selectedWeight++;
                  });
                },
                onDecrement: () {
                  setState(() {
                    selectedWeight--;
                  });
                },
              ),
              NumberSelector(
                title: 'Edad',
                number: selectedAge,
                onIncrement: () {
                  setState(() {
                    selectedAge++;
                  });
                },
                onDecrement: () {
                  setState(() {
                    selectedAge--;
                  });
                },
              ),
            ],
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: SizedBox(
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (context) => ImcResultScreen(
                                height: selectedHeight,
                                weight: selectedWeight,
                              ),
                        ),
                      );
                    },
                    style: ButtonStyles.primaryStyle,
                    child: Text('Calcular', style: TextStyles.bodyText),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

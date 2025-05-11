import 'package:flutter/material.dart';
import 'package:imc_calculator/core/app_color.dart';
import 'package:imc_calculator/core/box_decorations.dart';
import 'package:imc_calculator/core/button_styles.dart';
import 'package:imc_calculator/core/text_styles.dart';

class ImcResultScreen extends StatelessWidget {
  final double height;
  final int weight;
  const ImcResultScreen({
    super.key,
    required this.height,
    required this.weight,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0E0B20),
      appBar: toolbarResult(),
      body: bodyResult(context),
    );
  }

  Padding bodyResult(context) {
    double fixedHeight = height / 100;
    double imcResult = weight / (fixedHeight * fixedHeight);
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Tu resultado', style: TextStyles.midText),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 32,
                bottom: 16,
                // left: 16,
                // right: 16,
              ),
              child: Container(
                width: double.infinity,
                decoration: BoxDecorations.containerDecoration,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      getTextoByImc(imcResult).toUpperCase(),
                      style: TextStyle(
                        color: getColorByImc(imcResult),
                        fontSize: 38,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      imcResult.toStringAsFixed(2),
                      style: TextStyles.bigText,
                    ),
                    Text(
                      getDescriptionByImc(imcResult),
                      style: TextStyles.bodyText,
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ButtonStyles.primaryStyle,
              child: Text('Finalizar', style: TextStyles.bodyText),
            ),
          ),
        ],
      ),
    );
  }

  AppBar toolbarResult() {
    return AppBar(
      title: Text('Resultado'),
      backgroundColor: AppColor.primary,
      foregroundColor: Colors.white,
    );
  }

  getColorByImc(double imc) {
    return switch (imc) {
      < 18.5 => Colors.blue,
      < 24.9 => Colors.green,
      < 29.99 => Colors.orange,
      _ => Colors.red,
    };
  }

  getTextoByImc(double imc) {
    return switch (imc) {
      < 18.5 => 'Bajo',
      < 24.9 => 'Normal',
      < 29.99 => 'Sobrepeso',
      _ => 'Obesidad',
    };
  }

  getDescriptionByImc(double imc) {
    return switch (imc) {
      < 18.5 => 'Tu peso esta por debajo de lo recomendado',
      < 24.9 => 'Tu peso esta en el rango saludable',
      < 29.99 => 'Tienes sobrepeso, cuida tu alimentacion',
      _ => 'Tienes obesidad, consulta con un especialista',
    };
  }
}

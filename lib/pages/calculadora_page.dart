// ignore_for_file: prefer_const_constructors

import 'package:calculadora_imc/constants.dart';
import 'package:flutter/material.dart';
import '../components/custom_card.dart';

class CalculadoraPage extends StatefulWidget {
  const CalculadoraPage({super.key});

  @override
  State<CalculadoraPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CalculadoraPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora IMC'),
        centerTitle: true,
      ),
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: CustomCard(
                  child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.male,
                        size: 90,
                      ),
                      Text(
                        "Masculino",
                        style: labelTextStyle,
                      )
                    ],
                  ),
                )),
                Expanded(child: CustomCard()),
              ],
            ),
          ),
          Expanded(
            child: Placeholder(),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: CustomCard()),
                Expanded(child: CustomCard()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

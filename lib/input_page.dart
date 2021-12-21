import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(colour: const Color(0xFF1D1E33)),
                ),
                Expanded(
                  child: ReusableCard(colour: const Color(0xFF1D1E33)),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(colour: const Color(0xFF1D1E33)),
          ),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(colour: const Color(0xFF1D1E33)),
              ),
              Expanded(
                child: ReusableCard(colour: const Color(0xFF1D1E33)),
              )
            ],
          )),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({Key? key, required this.colour}) : super(key: key);

  Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}

import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  @override

  var randomNumber;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'This Is Dice App',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              child: Image.asset('assets/images/dice-$randomNumber.png', width: 200),
            ),
          ),
          const SizedBox(height: 50),
          GestureDetector(
            onTap: (){
              setState(() {
                randomNumber = Random().nextInt(6)+1;
              });
            },
            child: Container(
              height:50,
              width: 200,

              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20)
              ),
              child: const Center(
                child: Text(
                  'Button',
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

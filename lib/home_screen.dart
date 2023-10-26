import 'package:flutter/material.dart';
import 'dart:math';

const startAlignment = Alignment.bottomLeft;
const endAlignment = Alignment.topRight;
final randomizer = Random();

class HomeScreen extends StatefulWidget {
   HomeScreen(  {super.key, this.color1, this.color2,});

  HomeScreen.purple({super.key}):  color1 = Colors.deepPurple, 
  color2 = Colors.indigo;           

  final Color? color1;
  final Color? color2;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // var activeDice = 'assets/images/dice-6.png';

  // void rollDice(){
  //   var diceRole = Random().nextInt(6) +1;
  //   setState(() {
      
  //   activeDice = 'assets/images/dice-$diceRole.png';
  //   });
  // }
  ///////// or/////////////
  //////////////////
  
  var currentDiceRoll = 2;
  void rollDice(){
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) +1;

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dice App'),
        backgroundColor: Colors.black,
      ),
      body: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.purple,
            Colors.purpleAccent
          ],
          begin: startAlignment,
          end: endAlignment)
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              // activeDice,
              // or //
              'assets/images/dice-$currentDiceRoll.png',
            width: 200,),
            TextButton(onPressed: rollDice,
             child: const Text('Rolle Dice'),
             style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(

              )
             ),)
          ],
        ),
      ),
      ),
    );
  }
}
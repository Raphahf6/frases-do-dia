import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main(List<String> args) {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _frases = [
    "Que o dia comece bem e termine ainda melhor.",
    "Pra hoje: sorrisos bobos, uma mente tranquila e um coração cheio de paz.",
    "Às vezes as coisas demoram, mas acontecem. O importante é saber esperar e não perder a fé!",
    "Imagine uma nova história para a sua vida e acredite nela.",
    "Nem todos os dias são bons, mas há algo bom em cada dia.",
    "Sorria! Deus acaba de te dar um novo dia e coisas extraordinárias podem acontecer se você acreditar.",
    "Levanta, sacode a poeira e dá a volta por cima.",
    "Um pequeno pensamento positivo pela manhã pode mudar todo o seu dia."
  ];

  var _fraseGerada = "Clique abaixo para gerar uma frase!";

  void _gerarFrase() {
    var numeroSorteado = Random().nextInt(_frases.length);
    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Frases do dia'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          /* decoration:
              BoxDecoration(border: Border.all(width: 3, color: Colors.amber)),*/
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("images/logo.png"),
              Text(
                _fraseGerada,
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    color: Colors.black),
              ),
              ElevatedButton(
                onPressed: () {
                  _gerarFrase();
                },
                child: Text(
                  'Nova Frase',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

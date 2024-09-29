import 'package:flutter/material.dart';

void main() {
  runApp(const JuegoApp());
}

class JuegoApp extends StatelessWidget {
  const JuegoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Juego(),
    );
  }
}

class Juego extends StatefulWidget {
  const Juego({super.key});

  @override
  State<Juego> createState() => _JuegoState();
}

class _JuegoState extends State<Juego> {
  int balas = 0;
  int tontos = 0;
  int tricas = 0;
  int cuadras = 0;
  int quinas = 0;
  int senas = 0;
  int escalera = 0;
  int full = 0;
  int poker = 0;
  int grande = 0;

  void btbalas() {
    setState(() {
      if (balas >= 5) {
        balas = 0;
      } else {
        balas += 1;
      }
    });
  }

  void bttontos() {
    setState(() {
      if (tontos >= 10) {
        tontos = 0;
      } else {
        tontos += 2;
      }
    });
  }

  void bttricas() {
    setState(() {
      if (tricas >= 15) {
        tricas = 0;
      } else {
        tricas += 3;
      }
    });
  }

  void btcuadras() {
    setState(() {
      if (cuadras >= 20) {
        cuadras = 0;
      } else {
        cuadras += 4;
      }
    });
  }

  void btquinas() {
    setState(() {
      if (quinas >= 25) {
        quinas = 0;
      } else {
        quinas += 5;
      }
    });
  }

  void btsenas() {
    setState(() {
      if (senas >= 30) {
        senas = 0;
      } else {
        senas += 6;
      }
    });
  }

  void btescalera() {
    setState(() {
      if (escalera >= 25) {
        escalera = 0;
      } else if (escalera == 0) {
        escalera += 20;
      } else {
        escalera += 5;
      }
    });
  }

  void btfull() {
    setState(() {
      if (full >= 35) {
        full = 0;
      } else if (full == 0) {
        full += 30;
      } else {
        full += 5;
      }
    });
  }

  void btpoker() {
    setState(() {
      if (poker >= 45) {
        poker = 0;
      } else if (poker == 0) {
        poker += 40;
      } else {
        poker += 5;
      }
    });
  }

  void btgrande() {
    setState(() {
      if (grande >= 50) {
        grande = 0;
      } else {
        grande += 50;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cacho'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                children: <Widget>[
                  const Text("bala"),
               ElevatedButton(
                onPressed: () => btbalas(),
                child: Text('$balas'),
              ),
              ],
              ),
              Column(
                children: <Widget>[
                  const Text('escalera'),
                   ElevatedButton(
                onPressed: () => btescalera(),
                child: Text('$escalera'),
              ),
                ],
              ),
              Column(
                children: <Widget>[
                  const Text('Cuadras'),
                ElevatedButton(
                onPressed: () => btcuadras(),
                child: Text('$cuadras'),
              )
                ],
              ),

            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                children: [
                  const Text('Tontos'),
                  ElevatedButton(
                onPressed: () => bttontos(),
                child: Text('$tontos'),
              ),
                ],
              ),
              Column(
                children: <Widget>[
                  const Text('Full'),
                   ElevatedButton(
                onPressed: () => btfull(),
                child: Text('$full'),
              ),
                ],
              ),
              Column(
                children: <Widget>[
                  const Text('Quinas'),
                  ElevatedButton(
                onPressed: () => btquinas(),
                child: Text('$quinas'),
              )
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                children: <Widget>[
                  const Text('Tricas'),
                  ElevatedButton(
                onPressed: () => bttricas(),
                child: Text('$tricas'),
              ),
                ],
              ),
              Column(
                children: <Widget>[
                  const Text('Poker'),
                  ElevatedButton(
                onPressed: () => btpoker(),
                child: Text('$poker'),
              ),
                ],
              ),
              Column(
                children: <Widget>[
                  const Text('Senas'),
                  ElevatedButton(
                onPressed: () => btsenas(),
                child: Text('$senas'),
              )
                ],
              ),
              
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              ElevatedButton(
                onPressed: () => btgrande(),
                child: Text('$grande'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

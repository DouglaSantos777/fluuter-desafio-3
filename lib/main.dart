import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily: 'ConcertOne',
      ),
      home: const VolleyPage(),
    );
  }
}

class VolleyPage extends StatelessWidget {
  const VolleyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF00ADC3),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/ball.png',
                  width: 42,
                  height: 42,
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: 15),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Volley",
                      style: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    Transform.translate(
                      offset: const Offset(-7, -13),
                      child: const Text(
                        "do fim de semana",
                        style: TextStyle(
                          fontSize: 9,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 38),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 60,
                    height: 205,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 2),
                      color: const Color(0XFF73CFD5),
                    ),
                    child: const RotatedBox(
                      quarterTurns: 3,
                      child: Center(
                        child: Text(
                          'TIMES',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        _buildTeamRow('Sicranos', '3'),
                        const SizedBox(height: 2),
                        _buildTeamRow('Autoconvidados', '3'),
                        const SizedBox(height: 2),
                        _buildTeamRow('Ziraldos', '4'),
                        const SizedBox(height: 2),
                        _buildTeamRow('Sparrings', '5'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 33),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Jogo Casado',
                      style: TextStyle(color: Colors.white, fontSize: 27),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0XFF2B4A8E),
                    border: Border.all(color: Colors.white, width: 3),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 5.0, horizontal: 54.0),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Iniciar',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 85),
            Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                onPressed: () {},
                backgroundColor:
                    const Color(0XFF2B4A8E),
                    foregroundColor: Colors.white, 
                child: const Icon(Icons.add),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget _buildTeamRow(String teamName, String playerCount) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          teamName,
          style: const TextStyle(color: Color(0XFFEDC735), fontSize: 30),
        ),
        const SizedBox(width: 15),
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Row(
            children: [
              Text(
                playerCount,
                style: const TextStyle(color: Color(0XFF2B4A8E), fontSize: 48),
              ),
              const RotatedBox(
                quarterTurns: 3,
                child: Text(
                  'jogadores',
                  style: TextStyle(
                      color: Color(0XFF2B4A8E),
                      fontSize: 8,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

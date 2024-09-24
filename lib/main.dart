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
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(
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
            ),
            const Spacer(),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 60,
                  height: 190,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 2),
                    color: Color(0XFF73CFD5),
                  ),
                  child: const RotatedBox(
                    quarterTurns: 3,
                    child: Center(
                      child: Text(
                        'TIMES',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.w600,
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
                      _buildTeamRow('Autoconvidados', '3'),
                      _buildTeamRow('Ziraldos', '4'),
                      _buildTeamRow('Sparrings', '5'),
                    ],
                  ),
                ),
              ],
            ),
            const Spacer(),

            TextButton(
              onPressed: () {},
              child: const Text(
                'Jogo Casado',
                style: TextStyle(color: Colors.white, fontSize: 27),
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
                padding:
                    const EdgeInsets.symmetric(vertical: 5.0, horizontal: 54.0),
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
            const Spacer(),

            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(
                    right: 16.0,
                    bottom: 16.0), 
                child: SizedBox(
                  width: 45,
                  height: 45,
                  child: FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: const Color(0XFF2B4A8E),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 12,
                          height: 4,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                        Container(
                          width: 4,
                          height: 12,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
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
          style: const TextStyle(
            color: Color(0XFFEDC735), 
            fontSize: 26,
            height: 1),
        ),
        const SizedBox(width: 15),
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Row(
            children: [
              Text(
                playerCount,
                style: const TextStyle(color: Color(0XFF2B4A8E), 
                fontSize: 45,
                height: 1
                ),
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

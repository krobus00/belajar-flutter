import 'package:flutter/material.dart';
import 'package:mobile_app/pages/second.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Spacer(),
            const Image(
              width: 400,
              height: 400,
              image: AssetImage("assets/dino.png"),
            ),
            const Spacer(),
            SizedBox(
              child: Column(
                children: [
                  const Text(
                    "text 1",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFFCB42A),
                    ),
                  ),
                  TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xFFFCB42A)),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.black87),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SecondPage(),
                        ),
                      );
                    },
                    child: const Text('TextButton'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text("text 2"),
                  Row(
                    children: const [
                      Text("text ke samping"),
                      SizedBox(
                        width: 10,
                      ),
                      Text("kesamping"),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

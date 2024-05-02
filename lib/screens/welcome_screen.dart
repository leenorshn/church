import 'package:church/screens/main_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.only(top: 88, left: 24, right: 24),
        child: Column(
          children: [
            const Text(
              "Bienvenu",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 24,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const Text(
              "Jesus mon Sauveur\n Church",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 32,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Image.asset("images/eglise.avif"),
            const SizedBox(
              height: 72,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  minimumSize: const Size.fromHeight(56),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8))),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const MainScreen(),
                  ),
                );
              },
              child: const Text("Commencer"),
            ),
          ],
        ),
      ),
    );
  }
}

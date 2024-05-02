import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          children: [
            const SizedBox(
              height: 72,
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
              height: 16,
            ),
            Image.asset(
              "images/eglise.avif",
              height: 72,
            ),
            const Text(
              "Contactes:",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 32,
                color: Colors.blue,
              ),
            ),
            const Text(
              "jesus_church@gmail.com",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 20,
              ),
            ),
            const Text(
              "+243854417440",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 20,
              ),
            ),
            const Text(
              "+243851289345",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            TextField(
              onChanged: (value) {
                setState(() {
                  // name = value;
                });
              },
              decoration: InputDecoration(
                label: const Text("Nom complet"),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                focusedBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                enabledBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                prefixIcon: const Icon(CupertinoIcons.person),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            TextField(
              onChanged: (value) {
                setState(() {
                  // name = value;
                });
              },
              maxLines: 10,
              minLines: 5,
              decoration: InputDecoration(
                hintText: "Votre message ici",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                focusedBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                enabledBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                prefixIcon: const Icon(CupertinoIcons.person),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 40),
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {},
                child: Text("Envoyer"),
              ),
            )
          ],
        ),
      ),
    );
  }
}

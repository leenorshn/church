import 'package:church/screens/activity_screen.dart';
import 'package:church/screens/member_screen.dart';
import 'package:church/screens/program_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'contact_screen.dart';
import 'historique_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade50,
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              children: const [
                SizedBox(
                  height: 72,
                ),
                Text(
                  "Jesus mon Sauveur\n Church",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 32,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3 / 3,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                ),
                children: [
                  MenuTile(
                    icon: CupertinoIcons.home,
                    name: "Historique",
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HistoriqueScreen()));
                    },
                  ),
                  MenuTile(
                    icon: CupertinoIcons.list_bullet_indent,
                    name: "Nos programmes",
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ProgramScreen()));
                    },
                  ),
                  MenuTile(
                    icon: CupertinoIcons.person_2,
                    name: "Nos membres",
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MemberScreen()));
                    },
                  ),
                  MenuTile(
                    icon: CupertinoIcons.antenna_radiowaves_left_right,
                    name: "Nos activites passees",
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ActivityScreen()));
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.only(left: 24, right: 24),
              child: Column(
                children: [
                  const Text(
                    "Adresse:",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                      "Ville: Butembo /Commune: Kimemi / Quartier: Vungi , Rue Kin au 59"),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text(
                      "Vous pouvez nous contacter a partir\n de ce formulaire en cliquant ici:"),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ContactScreen()));
                      },
                      child: Text("Nos contacts"))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MenuTile extends StatelessWidget {
  const MenuTile({
    super.key,
    required this.onTap,
    required this.name,
    required this.icon,
  });

  final VoidCallback onTap;
  final IconData icon;
  final String name;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon),
              const SizedBox(
                height: 16,
              ),
              Text(name),
            ],
          )),
    );
  }
}

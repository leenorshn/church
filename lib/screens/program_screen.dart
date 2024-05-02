import 'package:church/database/program.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProgramScreen extends StatelessWidget {
  const ProgramScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey.shade50,
        appBar: AppBar(
          title: const Text("Programme hebdomadaire"),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 1,
        ),
        body: ListView.builder(
            itemCount: programList.length,
            padding: const EdgeInsets.only(top: 8),
            itemBuilder: (context, index) {
              var program = programList[index];
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.blueGrey.shade100,
                  ),
                ),
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        program.jour,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      subtitle: Text(
                        program.date,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      trailing: Icon(CupertinoIcons.time),
                    ),
                    ListTile(
                      title: Text(
                        program.activity,
                        style: TextStyle(
                          fontSize: 32,
                          color: program.activity == "culte"
                              ? Colors.blue
                              : Colors.red,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      trailing: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Orateur:"),
                          Text(
                            program.orateur,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            }));
  }
}

import 'package:church/bloc/member_bloc.dart';
import 'package:church/screens/new_member_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MemberScreen extends StatelessWidget {
  const MemberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nos membres"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 1,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NewMemberScreen(),
                ),
              );
            },
            icon: const Icon(CupertinoIcons.add),
          )
        ],
      ),
      body: BlocBuilder<MemberBloc, MemberState>(
        bloc: BlocProvider.of<MemberBloc>(context)..add(LoadMemberEvent()),
        builder: (context, state) {
          if (state is MemberLoadedSuccess) {
            return ListView.builder(
              itemCount: state.members.length,
              padding: const EdgeInsets.only(top: 24, bottom: 110),
              itemBuilder: (context, index) {
                var member = state.members[index];
                return Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: ListTile(
                    leading: const Icon(
                      CupertinoIcons.person,
                    ),
                    title: Text(member.name),
                    subtitle: Text(member.phone),
                    trailing: Text(member.genre == "Homme" ? "M" : "F"),
                  ),
                );
              },
            );
          } else {
            return const Center(
              child: Text("Pas de membre"),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const NewMemberScreen(),
            ),
          );
        },
        label: const Text("Demander d'etre membre"),
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
        icon: const Icon(Icons.person),
      ),
    );
  }
}

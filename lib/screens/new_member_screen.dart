import 'package:church/bloc/member_bloc.dart';
import 'package:church/database/membre.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewMemberScreen extends StatefulWidget {
  const NewMemberScreen({super.key});

  @override
  State<NewMemberScreen> createState() => _NewMemberScreenState();
}

const List<String> list = <String>['Homme', 'Femme'];

class _NewMemberScreenState extends State<NewMemberScreen> {
  String dropdownValue = list.first;
  String name = "";
  String phone = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nouveau membre"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 1,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32),
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                setState(() {
                  name = value;
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
              height: 18,
            ),
            TextField(
              onChanged: (value) {
                setState(() {
                  phone = value;
                });
              },
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                label: const Text("Numero de telephone"),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                focusedBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                enabledBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                prefixIcon: const Icon(CupertinoIcons.phone),
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text("Genre:"),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10)),
              child: DropdownButton<String>(
                value: dropdownValue,
                elevation: 16,
                isExpanded: true,
                style: const TextStyle(color: Colors.blueGrey),
                underline: Container(),
                onChanged: (String? value) {
                  // This is called when the user selects an item.
                  setState(() {
                    dropdownValue = value!;
                  });
                },
                items: list.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            const SizedBox(
              height: 64,
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
                //todo SAVE
                print(name);
                print(phone);
                print(dropdownValue);

                if (name.isNotEmpty && phone.isNotEmpty) {
                  BlocProvider.of<MemberBloc>(context).add(AddMemberEvent(
                      MemberModel(
                          phone: phone, name: name, genre: dropdownValue)));
                  Navigator.of(context).pop();
                }
              },
              child: const Text("Enregistrer"),
            ),
          ],
        ),
      ),
    );
  }
}

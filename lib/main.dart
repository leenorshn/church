import 'package:church/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/member_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MemberBloc()..add(LoadMemberEvent()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Church',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const WelcomeScreen(),
      ),
    );
  }
}

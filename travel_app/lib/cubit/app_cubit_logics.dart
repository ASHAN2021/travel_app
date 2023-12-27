import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/cubit/app_cubit_state.dart';
import 'package:travel_app/cubit/app_cubits.dart';
import 'package:travel_app/pages/welcome_page.dart';

class Appcubitlogics extends StatefulWidget {
  const Appcubitlogics({super.key});

  @override
  State<Appcubitlogics> createState() => _AppcubitlogicsState();
}

class _AppcubitlogicsState extends State<Appcubitlogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<Appcubits, CubitStates>(builder: (context, State) {
        if (State is WelcomeState) {
          return Welcomepage();
        } else {
          return Container();
        }
      }),
    );
  }
}

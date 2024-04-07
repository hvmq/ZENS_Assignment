import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zens_assignment_flutter/bloc/jokes_bloc.dart';
import 'package:zens_assignment_flutter/data/repositories/joke_repository.dart';
import 'package:zens_assignment_flutter/utils/app_utils.dart';
import 'presentation/pages/joke_page.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppString.titleApp,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider<JokeBloc>(
        create: (context) => JokeBloc(jokeRepository: JokeRepository()),
        child: const JokePage(),
      ),
    );
  }
}

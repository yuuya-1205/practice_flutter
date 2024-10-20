import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_practice_1/counter_bloc.dart';
import 'package:flutter_practice_1/stream_counter/stream_counter_event.dart';
import 'package:flutter_practice_1/stream_counter/stream_counter_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: BlocProvider(
        create: (BuildContext context) => StreamCounterBloc(),
        child: const StreamCounterPage(),
      ),
    );
  }
}

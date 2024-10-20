import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_practice_1/stream_counter/stream_counter_bloc.dart';
import 'package:flutter_practice_1/stream_counter/stream_counter_event.dart';

class StreamCounterPage extends StatefulWidget {
  const StreamCounterPage({super.key});

  @override
  State<StreamCounterPage> createState() => _StreamCounterPageState();
}

class _StreamCounterPageState extends State<StreamCounterPage> {
  int count = 0;

  final streamController = StreamController<int>();
  void incrementCount() {
    setState(() {
      count++;
    });
    streamController.sink.add(count);
  }

  @override
  Widget build(BuildContext context) {
    final counterBloc = context.read<StreamCounterBloc>();
    return Scaffold(
      appBar: AppBar(),
      body: BlocConsumer<StreamCounterBloc, int>(listener: (context, state) {
        if (state == 2) {}
        print("$state+ここで検知");
      }, builder: (context, state) {
        print("$state+ここでカウント");
        return Column(
          children: [
            Text("$state"),
            ElevatedButton(
              onPressed: () {
                counterBloc.add(IncrementCounter());
              },
              child: const Text("ボタン"),
            ),
          ],
        );
      }),
    );
  }
}

///buildメソッドが呼ばれる。
///0+ここでカウントが呼ばれている。
///ボタンをおす。
///1+を検知を押す。
///1+ここでカウント　が呼ばれる。
///
///listenerを用いると、ここで先に数値を検知して
///builderで呼ばれる。
///
///
///Takes the BuildContext along with the [bloc] 
///state and is responsible for executing 
///in response to state changes.
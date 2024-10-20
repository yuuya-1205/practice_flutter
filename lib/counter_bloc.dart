import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_practice_1/counter_event.dart';

///このBLocにはBussinessロジックを記載する。

class CounterBloc extends Bloc<CounterEvent, int> {
  // ignore: prefer_typing_uninitialized_variables
  final a = Emitter;

  ///superには初期値を追加する。
  CounterBloc() : super(0) {
    on<IncrementCounter>(
      (event, emit) {
        print(event);
        print(emit);
        emit(state + 1);
        print(state);
      },
    );

    on<DecrementCounter>(
      (event, emit) {
        emit(state - 1);
      },
    );
  }
}

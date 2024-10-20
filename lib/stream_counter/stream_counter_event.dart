import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_practice_1/stream_counter/stream_counter_bloc.dart';

///このBLocにはBussinessロジックを記載する。

class StreamCounterBloc extends Bloc<StreamCounter, int> {
  // ignore: prefer_typing_uninitialized_variables
  final a = Emitter;

  ///superには初期値を追加する。
  StreamCounterBloc() : super(0) {
    on<IncrementCounter>(
      (event, emit) {
        emit(state + 1);
      },
    );

    on<DecrementCounter>(
      (event, emit) {
        emit(state - 1);
      },
    );
  }
}

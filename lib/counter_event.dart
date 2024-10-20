abstract class CounterEvent {}

class IncrementCounter extends CounterEvent {}

class DecrementCounter extends CounterEvent {}


///ここにはどんなeventがあるか書く。
///今回はIncrement（増加）Decrement（減少）のイベントをまとめておく。
///要件定義の時にeventをまとめておくと楽かも。

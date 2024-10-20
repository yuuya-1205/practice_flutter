const double xOrigin = 0;
const double yOrigin = 0;

// クラスは設計図
class Point {
  final double x;
  final double y;

// コンストラクタ（組み立てるって意味）は初期化するために作られている。
// クラス（設計図）を元にコンストラクタで組み立ててインスタンス（実態）を生成する。
  Point(this.x, this.y) {
    print(x);
    print("Pointクラスがインスタンスが生成されました");
  }

//name コンストラクタ
  Point.origin()
      : x = xOrigin,
        y = yOrigin;
}

// void main() {
//   var point = Point(xOrigin, yOrigin);
//   final a = point.x;
//   print(a);
//   var originPoint = Point.origin();
//   final b = originPoint.x;
//   print(originPoint);
//   print(b);
// }

/// https://zenn.dev/tsukatsuka1783/articles/flutter_constract_super

///クラスはインスタンスを作らないと使うことができない。
///コンストラクタを使ってインスタンス

///　インスタンス化の文法
/// 型　インスタンス = クラス
/// Car car = Car();
///

class Car {
  ///ここはメンバ変数。
  String carName;
  String carSheet;
  String carNavigation;

  ///コンストラクタ。
  Car(this.carName, this.carSheet, this.carNavigation) {
    print("ここでインスタンス（実体）が作られる");
  }

  //名前付きコンストラクタを使ってみる。

  Car.toyota()
      : carName = "toyota",
        carSheet = "トヨタ",
        carNavigation = "トヨタ";
}

void main() {
  final car = Car("トヨタ", "トヨタ", "日産");
  print(car);
  print(car.carName);

  final a = Car.toyota();
  print(a);
  final b = a.carName;

  /// これがtoyotaならOK
  print(b);
}

///インスタンスを作るとインスタンスからパラメーターを呼び出すと（これ、あってる？）
/// 

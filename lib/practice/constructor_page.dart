const double xOrigin = 0;
const double yOrigin = 0;

class Point {
  final double x;
  final double y;

  Point(this.x, this.y);

  Point.origin()
      : x = xOrigin,
        y = yOrigin;
}

void main() {
  var originPoint = Point.origin();
  print(originPoint);
}


/// コンストラクターについて説明できるようにする
/// クラスのインスタンスが生成される際に、自動的に呼び出されるメソッドや初期化処理のこお
///ここに絶対入るものを入れる。
abstract class Animal {
  String greet();
  String eat();

  // ///共通のコンストラクタは作れる。
  // final String name;
  // Animal(this.name);
}

class Human extends Animal {
  // Human(super.name);

  @override
  String greet() {
    return "おはよう";
  }

  @override
  String eat() => "";

  int age() {
    return 3;
  }
}

class Dog extends Animal {
  ///独自のコンストラクタが作れる。
  final String name;
  Dog(this.name);

  @override
  String greet() {
    return "わんわん";
  }

  @override
  String eat() => "ドッグフード";
}

void main() {}
///Animalクラスに書いているので同じことを書かなくても大丈夫になっている。

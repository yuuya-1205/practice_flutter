import 'package:flutter/material.dart';

@immutable
class ImmutableUser {
  const ImmutableUser({
    required this.name,
    required this.age,
  });

  final String name;
  final int age;

  @override
  String toString() {
    return "私は$nameです。$age歳です。 ハッシュ値=$hashCode";
  }

  ImmutableUser copyWith({String? name, int? age}) {
    // 値が設定されていればその値を使い、なければ既存の値を使って新しいImmutableUserを返す
    return ImmutableUser(name: name ?? this.name, age: age ?? this.age);
  }
}

void main() {
  const immutableUser1 = ImmutableUser(name: 'うし', age: 32);

  const immutableUser2 = immutableUser1;

//既存のオブジェクトをハッシュ値を変えて使いたい場合、copyWithを用いる。
  final immutableUser3 = immutableUser1.copyWith();
  final immutableUser4 = immutableUser1.copyWith(age: 33, name: "konnbannha");

  print(immutableUser1);
  print(immutableUser2);
  print(immutableUser3);
  print(immutableUser4);

  ///ハッシュ値ってなに？
  ///別物ってこと？
  ///ハッシュ値
  ///同じオブジェクトは同じハッシュ値になる。
  ///異なるオブジェクトはハッシュ値も異なる。
}

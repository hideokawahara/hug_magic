import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
abstract class User implements _$User {

  const User._();

  @JsonSerializable(anyMap: true)
  const factory User({
    required int id,
    required String name,
    @JsonKey(name: 'why') Map<String, dynamic>? why,
    @JsonSerializable(anyMap: false)
    @JsonKey(name: 'why2') Map<String, dynamic>? why2,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  void fuga() {
    print('メソッドを追加するには implements にする必要がある');
  }

}

// class Gaku extends User {
//   Gaku() : super._();
//   @override
//   // TODO: implement copyWith
//   $UserCopyWith<User> get copyWith => throw UnimplementedError();
//
//   @override
//   // TODO: implement id
//   int get id => throw UnimplementedError();
//
//   @override
//   // TODO: implement name
//   String get name => throw UnimplementedError();
//
//   @override
//   Map<String, dynamic> toJson() {
//     // TODO: implement toJson
//     throw UnimplementedError();
//   }
// }

// abstract class Nothing {
//   Nothing? copyWith() {
//     return null;
//   }
// }
//
// class Check extends Check2 implements Nothing  {
//   @override
//   Nothing? copyWith() {
//     // TODO: implement copyWith
//     throw UnimplementedError();
//   }
//
//   // @override
//   // void test() {
//   //   // TODO: implement test
//   // }
// }
// class Check2 extends Nothing {
//   void test() {}
//
//   @override
//   Nothing? copyWith() {
//     // TODO: implement copyWith
//     return super.copyWith();
//   }
// }

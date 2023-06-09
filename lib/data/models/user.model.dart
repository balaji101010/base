import 'package:json_annotation/json_annotation.dart';

part 'user.model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class User {
  int? id;

  String? firstName;

  String? lastName;

  String? email;

  User({this.id,this.firstName,this.lastName,this.email});

  factory User.fromJson(Map<String, dynamic> json) {
    return _$UserFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$UserToJson(this);
  }
}

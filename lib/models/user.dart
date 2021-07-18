import 'package:error/models/district.dart';
import 'package:error/models/location.dart';
import 'package:error/models/role.dart';
import 'package:json_serializable/builder.dart';

import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  int? _id;
  late String _name;
  late String _phone;
  late String _password;
  late Role _role;
  late String _avatar;
  late bool _actived;
  late Location _location;
  late District _district;

  User(
      {int? id,
      required String name,
      required String phone,
      required String password,
      required Role role,
      required String avatar,
      required bool actived,
      required Location location,
      required District district}) {
    this._id = id;
    this._name = name;
    this._phone = phone;
    this._password = password;
    this._role = role;
    this._actived = actived;
    this._avatar = avatar;
    this._location = location;
    this._district = district;
  }

  int? get id => _id;
  set id(int? id) => _id = id;
  String get password => _password;
  set password(String password) => _password = password;
  String get phone => _phone;
  set phone(String phone) => _phone = phone;
  String get avatar => _avatar;
  set avatar(String avatar) => _avatar = avatar;
  Role get role => _role;
  set role(Role role) => _role = role;
  District get district => _district;
  set district(District district) => _district = district;
  Location get location => _location;
  set location(Location location) => _location = location;
  String get name => _name;
  set name(String name) => _name = name;
  bool get actived => _actived;
  set actived(bool actived) => _actived = actived;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}

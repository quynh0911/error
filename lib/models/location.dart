import 'package:error/models/user.dart';

class Location {
  int? _id;
  late double _latitude;
  late double _longtitude;
  User? _owner;

  Location(
      {required double latitude,
      required double longtitude,
      int? id,
      User? owner}) {
    this._latitude = latitude;
    this._longtitude = longtitude;
    this._id = id;
    this._owner = owner;
  }

  double get latitude => _latitude;
  set latitude(double latitude) => _latitude = latitude;
  double get longtitude => _longtitude;
  set longtitude(double longtitude) => _longtitude = longtitude;
  int? get id => _id;
  set id(int? id) => _id = id;
  User? get owner => _owner;
  set owner(User? owner) => _owner = owner;

  Location.fromJson(Map<String, dynamic> json) {
    _latitude = json['latitude'];
    _longtitude = json['longtitude'];
    _id = json['id'];
    _owner = json['owner'] != null ? new User.fromJson(json['owner']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['latitude'] = this._latitude;
    data['longtitude'] = this._longtitude;
    if (this._owner != null) {
      data['owner'] = this._owner?.toJson();
    }
    data['id'] = this._id;
    return data;
  }
}

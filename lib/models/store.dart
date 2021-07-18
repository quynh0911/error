import 'package:error/models/district.dart';
import 'package:error/models/location.dart';
import 'package:json_annotation/json_annotation.dart';

class Store {
  int? _id;
  String? _address;
  District? _district;
  Location? _location;
  String? _name;

  Store(
      {int? id,
      String? address,
      District? district,
      Location? location,
      String? name}) {
    this._address = address;
    this._district = district;
    this._location = location;
    this._name = name;
    this._id = id;
  }
  int? get id => _id;
  set id(int? id) => _id = id;
  String? get address => _address;
  set address(String? address) => _address = address;
  District? get district => _district;
  set district(District? district) => _district = district;
  Location? get location => _location;
  set location(Location? location) => _location = location;
  String? get name => _name;
  set name(String? name) => _name = name;
  Store.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
    _address = json['address'];
    _location = json['location'] != null
        ? new Location.fromJson(json['location'])
        : null;
    _district = json['district'] != null
        ? new District.fromJson(json['district'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['name'] = this._name;
    data['address'] = this._address;
    if (this._location != null) {
      data['location'] = this._location?.toJson();
    }
    if (this._district != null) {
      data['district'] = this._district?.toJson();
    }
    return data;
  }
}

class District {
  int _id = 1;
  String? _name = "";
  District({required int id, String? name}) {
    this._id = id;
    this._name = name;
  }
  // ignore: unnecessary_getters_setters
  int get id => _id;
  set id(int id) => _id = id;
  String? get name => _name;
  set name(String? name) => _name = name;
  District.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['name'] = this._name;
    return data;
  }
}

import 'package:error/models/product_type.dart';
import 'package:error/models/store.dart';
import 'package:json_annotation/json_annotation.dart';
part 'product.g.dart';

@JsonSerializable()
class Product {
  int? _id;
  late bool _actived;
  late String _description;
  late String _image;
  late String _imageContentType;
  late String _name;
  late int _price;
  late Store _store;
  late ProductType _types;

  Product(
      {int? id,
      required bool actived,
      required String description,
      required String image,
      required String imageContentType,
      required String name,
      required int price,
      required Store store,
      required ProductType types}) {
    this._id = id;
    this._actived = actived;
    this._description = description;
    this._image = image;
    this._imageContentType = imageContentType;
    this._name = name;
    this._price = price;
    this._store = store;
    this._types = types;
  }
  int? get id => _id;
  set id(int? id) => _id = id;
  bool get actived => _actived;
  set actived(bool actived) => _actived = actived;
  String get description => _description;
  set description(String description) => _description = description;
  String get image => _image;
  set image(String image) => _image = image;
  String get imageContentType => _imageContentType;
  set imageContentType(String imageContentType) =>
      _imageContentType = imageContentType;
  String get name => _name;
  set name(String name) => _name = name;
  int get price => _price;
  set price(int price) => _price = price;
  Store get store => _store;
  set store(Store store) => _store = store;
  ProductType get types => _types;
  set types(ProductType types) => _types = types;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
  Map<String, dynamic> toJson() => _$ProductToJson(this);
}

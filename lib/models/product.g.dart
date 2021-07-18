// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) {
  return Product(
    actived: json['actived'] as bool,
    description: json['description'] as String,
    image: json['image'] as String,
    imageContentType: json['imageContentType'] as String,
    name: json['name'] as String,
    price: json['price'] as int,
    store: Store.fromJson(json['store'] as Map<String, dynamic>),
    types: ProductType.fromJson(json['types'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'actived': instance.actived,
      'description': instance.description,
      'image': instance.image,
      'imageContentType': instance.imageContentType,
      'name': instance.name,
      'price': instance.price,
      'store': instance.store,
      'types': instance.types,
    };

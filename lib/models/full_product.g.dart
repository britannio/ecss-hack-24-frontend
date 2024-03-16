// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'full_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FullProductImpl _$$FullProductImplFromJson(Map<String, dynamic> json) =>
    _$FullProductImpl(
      portrait_url: json['portrait_url'] as String,
      description: json['description'] as String,
      product: Product.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FullProductImplToJson(_$FullProductImpl instance) =>
    <String, dynamic>{
      'portrait_url': instance.portrait_url,
      'description': instance.description,
      'product': instance.product,
    };

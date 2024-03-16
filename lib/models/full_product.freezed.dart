// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'full_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FullProduct _$FullProductFromJson(Map<String, dynamic> json) {
  return _FullProduct.fromJson(json);
}

/// @nodoc
mixin _$FullProduct {
  String get portrait_url => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  Product get product => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FullProductCopyWith<FullProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FullProductCopyWith<$Res> {
  factory $FullProductCopyWith(
          FullProduct value, $Res Function(FullProduct) then) =
      _$FullProductCopyWithImpl<$Res, FullProduct>;
  @useResult
  $Res call({String portrait_url, String description, Product product});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class _$FullProductCopyWithImpl<$Res, $Val extends FullProduct>
    implements $FullProductCopyWith<$Res> {
  _$FullProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? portrait_url = null,
    Object? description = null,
    Object? product = null,
  }) {
    return _then(_value.copyWith(
      portrait_url: null == portrait_url
          ? _value.portrait_url
          : portrait_url // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FullProductImplCopyWith<$Res>
    implements $FullProductCopyWith<$Res> {
  factory _$$FullProductImplCopyWith(
          _$FullProductImpl value, $Res Function(_$FullProductImpl) then) =
      __$$FullProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String portrait_url, String description, Product product});

  @override
  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$FullProductImplCopyWithImpl<$Res>
    extends _$FullProductCopyWithImpl<$Res, _$FullProductImpl>
    implements _$$FullProductImplCopyWith<$Res> {
  __$$FullProductImplCopyWithImpl(
      _$FullProductImpl _value, $Res Function(_$FullProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? portrait_url = null,
    Object? description = null,
    Object? product = null,
  }) {
    return _then(_$FullProductImpl(
      portrait_url: null == portrait_url
          ? _value.portrait_url
          : portrait_url // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FullProductImpl implements _FullProduct {
  const _$FullProductImpl(
      {required this.portrait_url,
      required this.description,
      required this.product});

  factory _$FullProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$FullProductImplFromJson(json);

  @override
  final String portrait_url;
  @override
  final String description;
  @override
  final Product product;

  @override
  String toString() {
    return 'FullProduct(portrait_url: $portrait_url, description: $description, product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FullProductImpl &&
            (identical(other.portrait_url, portrait_url) ||
                other.portrait_url == portrait_url) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.product, product) || other.product == product));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, portrait_url, description, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FullProductImplCopyWith<_$FullProductImpl> get copyWith =>
      __$$FullProductImplCopyWithImpl<_$FullProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FullProductImplToJson(
      this,
    );
  }
}

abstract class _FullProduct implements FullProduct {
  const factory _FullProduct(
      {required final String portrait_url,
      required final String description,
      required final Product product}) = _$FullProductImpl;

  factory _FullProduct.fromJson(Map<String, dynamic> json) =
      _$FullProductImpl.fromJson;

  @override
  String get portrait_url;
  @override
  String get description;
  @override
  Product get product;
  @override
  @JsonKey(ignore: true)
  _$$FullProductImplCopyWith<_$FullProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

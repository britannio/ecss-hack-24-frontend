import 'package:ecss_hack_24/models/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'full_product.freezed.dart';
part 'full_product.g.dart';

@freezed
abstract class FullProduct with _$FullProduct {
  const factory FullProduct({
    required String portrait_url,
    required String description,
    required Product product,
  }) = _FullProduct;

  factory FullProduct.fromJson(Map<String, dynamic> json) =>
      _$FullProductFromJson(json);
}

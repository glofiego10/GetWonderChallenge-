import 'package:freezed_annotation/freezed_annotation.dart';

part 'info.freezed.dart';
part 'info.g.dart';

///Modelo para la info traida de la fake api
@freezed
class Info with _$Info {
  const factory Info({
    String? title,
    String? imageUrl,
  }) = _Info;

  factory Info.fromJson(Map<String, dynamic> json) => _$InfoFromJson(json);
}

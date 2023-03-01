// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bloc_page_home.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BlocPageHomeState _$$_BlocPageHomeStateFromJson(Map<String, dynamic> json) =>
    _$_BlocPageHomeState(
      status: $enumDecodeNullable(_$HomeStatusEnumMap, json['status']) ??
          HomeStatus.initial,
      listInfo: (json['listInfo'] as List<dynamic>?)
              ?.map((e) => Info.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      error: json['error'] as String?,
    );

Map<String, dynamic> _$$_BlocPageHomeStateToJson(
        _$_BlocPageHomeState instance) =>
    <String, dynamic>{
      'status': _$HomeStatusEnumMap[instance.status]!,
      'listInfo': instance.listInfo,
      'error': instance.error,
    };

const _$HomeStatusEnumMap = {
  HomeStatus.initial: 'initial',
  HomeStatus.loading: 'loading',
  HomeStatus.success: 'success',
  HomeStatus.error: 'error',
};

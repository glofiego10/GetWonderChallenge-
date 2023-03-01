// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bloc_page_home.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BlocPageHomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? get,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getImagenes value) get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getImagenes value)? get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getImagenes value)? get,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlocPageHomeEventCopyWith<$Res> {
  factory $BlocPageHomeEventCopyWith(
          BlocPageHomeEvent value, $Res Function(BlocPageHomeEvent) then) =
      _$BlocPageHomeEventCopyWithImpl<$Res, BlocPageHomeEvent>;
}

/// @nodoc
class _$BlocPageHomeEventCopyWithImpl<$Res, $Val extends BlocPageHomeEvent>
    implements $BlocPageHomeEventCopyWith<$Res> {
  _$BlocPageHomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_getImagenesCopyWith<$Res> {
  factory _$$_getImagenesCopyWith(
          _$_getImagenes value, $Res Function(_$_getImagenes) then) =
      __$$_getImagenesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_getImagenesCopyWithImpl<$Res>
    extends _$BlocPageHomeEventCopyWithImpl<$Res, _$_getImagenes>
    implements _$$_getImagenesCopyWith<$Res> {
  __$$_getImagenesCopyWithImpl(
      _$_getImagenes _value, $Res Function(_$_getImagenes) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_getImagenes implements _getImagenes {
  const _$_getImagenes();

  @override
  String toString() {
    return 'BlocPageHomeEvent.get()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_getImagenes);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() get,
  }) {
    return get();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? get,
  }) {
    return get?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? get,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getImagenes value) get,
  }) {
    return get(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getImagenes value)? get,
  }) {
    return get?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getImagenes value)? get,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(this);
    }
    return orElse();
  }
}

abstract class _getImagenes implements BlocPageHomeEvent {
  const factory _getImagenes() = _$_getImagenes;
}

BlocPageHomeState _$BlocPageHomeStateFromJson(Map<String, dynamic> json) {
  return _BlocPageHomeState.fromJson(json);
}

/// @nodoc
mixin _$BlocPageHomeState {
  ///Estados
  HomeStatus get status => throw _privateConstructorUsedError;

  ///Lista de informacion
  List<Info> get listInfo => throw _privateConstructorUsedError;

  ///Mensaje de error
  String? get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BlocPageHomeStateCopyWith<BlocPageHomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlocPageHomeStateCopyWith<$Res> {
  factory $BlocPageHomeStateCopyWith(
          BlocPageHomeState value, $Res Function(BlocPageHomeState) then) =
      _$BlocPageHomeStateCopyWithImpl<$Res, BlocPageHomeState>;
  @useResult
  $Res call({HomeStatus status, List<Info> listInfo, String? error});
}

/// @nodoc
class _$BlocPageHomeStateCopyWithImpl<$Res, $Val extends BlocPageHomeState>
    implements $BlocPageHomeStateCopyWith<$Res> {
  _$BlocPageHomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? listInfo = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as HomeStatus,
      listInfo: null == listInfo
          ? _value.listInfo
          : listInfo // ignore: cast_nullable_to_non_nullable
              as List<Info>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BlocPageHomeStateCopyWith<$Res>
    implements $BlocPageHomeStateCopyWith<$Res> {
  factory _$$_BlocPageHomeStateCopyWith(_$_BlocPageHomeState value,
          $Res Function(_$_BlocPageHomeState) then) =
      __$$_BlocPageHomeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HomeStatus status, List<Info> listInfo, String? error});
}

/// @nodoc
class __$$_BlocPageHomeStateCopyWithImpl<$Res>
    extends _$BlocPageHomeStateCopyWithImpl<$Res, _$_BlocPageHomeState>
    implements _$$_BlocPageHomeStateCopyWith<$Res> {
  __$$_BlocPageHomeStateCopyWithImpl(
      _$_BlocPageHomeState _value, $Res Function(_$_BlocPageHomeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? listInfo = null,
    Object? error = freezed,
  }) {
    return _then(_$_BlocPageHomeState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as HomeStatus,
      listInfo: null == listInfo
          ? _value._listInfo
          : listInfo // ignore: cast_nullable_to_non_nullable
              as List<Info>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BlocPageHomeState implements _BlocPageHomeState {
  const _$_BlocPageHomeState(
      {this.status = HomeStatus.initial,
      final List<Info> listInfo = const [],
      this.error})
      : _listInfo = listInfo;

  factory _$_BlocPageHomeState.fromJson(Map<String, dynamic> json) =>
      _$$_BlocPageHomeStateFromJson(json);

  ///Estados
  @override
  @JsonKey()
  final HomeStatus status;

  ///Lista de informacion
  final List<Info> _listInfo;

  ///Lista de informacion
  @override
  @JsonKey()
  List<Info> get listInfo {
    if (_listInfo is EqualUnmodifiableListView) return _listInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listInfo);
  }

  ///Mensaje de error
  @override
  final String? error;

  @override
  String toString() {
    return 'BlocPageHomeState(status: $status, listInfo: $listInfo, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BlocPageHomeState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._listInfo, _listInfo) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_listInfo), error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BlocPageHomeStateCopyWith<_$_BlocPageHomeState> get copyWith =>
      __$$_BlocPageHomeStateCopyWithImpl<_$_BlocPageHomeState>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BlocPageHomeStateToJson(
      this,
    );
  }
}

abstract class _BlocPageHomeState implements BlocPageHomeState {
  const factory _BlocPageHomeState(
      {final HomeStatus status,
      final List<Info> listInfo,
      final String? error}) = _$_BlocPageHomeState;

  factory _BlocPageHomeState.fromJson(Map<String, dynamic> json) =
      _$_BlocPageHomeState.fromJson;

  @override

  ///Estados
  HomeStatus get status;
  @override

  ///Lista de informacion
  List<Info> get listInfo;
  @override

  ///Mensaje de error
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_BlocPageHomeStateCopyWith<_$_BlocPageHomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

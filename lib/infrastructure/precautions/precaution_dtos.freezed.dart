// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'precaution_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PrecautionDTO _$PrecautionDTOFromJson(Map<String, dynamic> json) {
  return _PrecautionDTO.fromJson(json);
}

class _$PrecautionDTOTearOff {
  const _$PrecautionDTOTearOff();

  _PrecautionDTO call(
      {@required String title,
      @required List<String> before,
      @required List<String> during,
      @required List<String> after}) {
    return _PrecautionDTO(
      title: title,
      before: before,
      during: during,
      after: after,
    );
  }
}

// ignore: unused_element
const $PrecautionDTO = _$PrecautionDTOTearOff();

mixin _$PrecautionDTO {
  String get title;
  List<String> get before;
  List<String> get during;
  List<String> get after;

  Map<String, dynamic> toJson();
  $PrecautionDTOCopyWith<PrecautionDTO> get copyWith;
}

abstract class $PrecautionDTOCopyWith<$Res> {
  factory $PrecautionDTOCopyWith(
          PrecautionDTO value, $Res Function(PrecautionDTO) then) =
      _$PrecautionDTOCopyWithImpl<$Res>;
  $Res call(
      {String title,
      List<String> before,
      List<String> during,
      List<String> after});
}

class _$PrecautionDTOCopyWithImpl<$Res>
    implements $PrecautionDTOCopyWith<$Res> {
  _$PrecautionDTOCopyWithImpl(this._value, this._then);

  final PrecautionDTO _value;
  // ignore: unused_field
  final $Res Function(PrecautionDTO) _then;

  @override
  $Res call({
    Object title = freezed,
    Object before = freezed,
    Object during = freezed,
    Object after = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed ? _value.title : title as String,
      before: before == freezed ? _value.before : before as List<String>,
      during: during == freezed ? _value.during : during as List<String>,
      after: after == freezed ? _value.after : after as List<String>,
    ));
  }
}

abstract class _$PrecautionDTOCopyWith<$Res>
    implements $PrecautionDTOCopyWith<$Res> {
  factory _$PrecautionDTOCopyWith(
          _PrecautionDTO value, $Res Function(_PrecautionDTO) then) =
      __$PrecautionDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      List<String> before,
      List<String> during,
      List<String> after});
}

class __$PrecautionDTOCopyWithImpl<$Res>
    extends _$PrecautionDTOCopyWithImpl<$Res>
    implements _$PrecautionDTOCopyWith<$Res> {
  __$PrecautionDTOCopyWithImpl(
      _PrecautionDTO _value, $Res Function(_PrecautionDTO) _then)
      : super(_value, (v) => _then(v as _PrecautionDTO));

  @override
  _PrecautionDTO get _value => super._value as _PrecautionDTO;

  @override
  $Res call({
    Object title = freezed,
    Object before = freezed,
    Object during = freezed,
    Object after = freezed,
  }) {
    return _then(_PrecautionDTO(
      title: title == freezed ? _value.title : title as String,
      before: before == freezed ? _value.before : before as List<String>,
      during: during == freezed ? _value.during : during as List<String>,
      after: after == freezed ? _value.after : after as List<String>,
    ));
  }
}

@JsonSerializable()
class _$_PrecautionDTO extends _PrecautionDTO {
  const _$_PrecautionDTO(
      {@required this.title,
      @required this.before,
      @required this.during,
      @required this.after})
      : assert(title != null),
        assert(before != null),
        assert(during != null),
        assert(after != null),
        super._();

  factory _$_PrecautionDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_PrecautionDTOFromJson(json);

  @override
  final String title;
  @override
  final List<String> before;
  @override
  final List<String> during;
  @override
  final List<String> after;

  @override
  String toString() {
    return 'PrecautionDTO(title: $title, before: $before, during: $during, after: $after)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PrecautionDTO &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.before, before) ||
                const DeepCollectionEquality().equals(other.before, before)) &&
            (identical(other.during, during) ||
                const DeepCollectionEquality().equals(other.during, during)) &&
            (identical(other.after, after) ||
                const DeepCollectionEquality().equals(other.after, after)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(before) ^
      const DeepCollectionEquality().hash(during) ^
      const DeepCollectionEquality().hash(after);

  @override
  _$PrecautionDTOCopyWith<_PrecautionDTO> get copyWith =>
      __$PrecautionDTOCopyWithImpl<_PrecautionDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PrecautionDTOToJson(this);
  }
}

abstract class _PrecautionDTO extends PrecautionDTO {
  const _PrecautionDTO._() : super._();
  const factory _PrecautionDTO(
      {@required String title,
      @required List<String> before,
      @required List<String> during,
      @required List<String> after}) = _$_PrecautionDTO;

  factory _PrecautionDTO.fromJson(Map<String, dynamic> json) =
      _$_PrecautionDTO.fromJson;

  @override
  String get title;
  @override
  List<String> get before;
  @override
  List<String> get during;
  @override
  List<String> get after;
  @override
  _$PrecautionDTOCopyWith<_PrecautionDTO> get copyWith;
}

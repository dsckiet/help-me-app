// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'first_aid_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
FirstAidDTO _$FirstAidDTOFromJson(Map<String, dynamic> json) {
  return _FirstAidDTO.fromJson(json);
}

class _$FirstAidDTOTearOff {
  const _$FirstAidDTOTearOff();

  _FirstAidDTO call(
      {@required String woundType, @required List<String> treatment}) {
    return _FirstAidDTO(
      woundType: woundType,
      treatment: treatment,
    );
  }
}

// ignore: unused_element
const $FirstAidDTO = _$FirstAidDTOTearOff();

mixin _$FirstAidDTO {
  String get woundType;
  List<String> get treatment;

  Map<String, dynamic> toJson();
  $FirstAidDTOCopyWith<FirstAidDTO> get copyWith;
}

abstract class $FirstAidDTOCopyWith<$Res> {
  factory $FirstAidDTOCopyWith(
          FirstAidDTO value, $Res Function(FirstAidDTO) then) =
      _$FirstAidDTOCopyWithImpl<$Res>;
  $Res call({String woundType, List<String> treatment});
}

class _$FirstAidDTOCopyWithImpl<$Res> implements $FirstAidDTOCopyWith<$Res> {
  _$FirstAidDTOCopyWithImpl(this._value, this._then);

  final FirstAidDTO _value;
  // ignore: unused_field
  final $Res Function(FirstAidDTO) _then;

  @override
  $Res call({
    Object woundType = freezed,
    Object treatment = freezed,
  }) {
    return _then(_value.copyWith(
      woundType: woundType == freezed ? _value.woundType : woundType as String,
      treatment:
          treatment == freezed ? _value.treatment : treatment as List<String>,
    ));
  }
}

abstract class _$FirstAidDTOCopyWith<$Res>
    implements $FirstAidDTOCopyWith<$Res> {
  factory _$FirstAidDTOCopyWith(
          _FirstAidDTO value, $Res Function(_FirstAidDTO) then) =
      __$FirstAidDTOCopyWithImpl<$Res>;
  @override
  $Res call({String woundType, List<String> treatment});
}

class __$FirstAidDTOCopyWithImpl<$Res> extends _$FirstAidDTOCopyWithImpl<$Res>
    implements _$FirstAidDTOCopyWith<$Res> {
  __$FirstAidDTOCopyWithImpl(
      _FirstAidDTO _value, $Res Function(_FirstAidDTO) _then)
      : super(_value, (v) => _then(v as _FirstAidDTO));

  @override
  _FirstAidDTO get _value => super._value as _FirstAidDTO;

  @override
  $Res call({
    Object woundType = freezed,
    Object treatment = freezed,
  }) {
    return _then(_FirstAidDTO(
      woundType: woundType == freezed ? _value.woundType : woundType as String,
      treatment:
          treatment == freezed ? _value.treatment : treatment as List<String>,
    ));
  }
}

@JsonSerializable()
class _$_FirstAidDTO extends _FirstAidDTO {
  const _$_FirstAidDTO({@required this.woundType, @required this.treatment})
      : assert(woundType != null),
        assert(treatment != null),
        super._();

  factory _$_FirstAidDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_FirstAidDTOFromJson(json);

  @override
  final String woundType;
  @override
  final List<String> treatment;

  @override
  String toString() {
    return 'FirstAidDTO(woundType: $woundType, treatment: $treatment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FirstAidDTO &&
            (identical(other.woundType, woundType) ||
                const DeepCollectionEquality()
                    .equals(other.woundType, woundType)) &&
            (identical(other.treatment, treatment) ||
                const DeepCollectionEquality()
                    .equals(other.treatment, treatment)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(woundType) ^
      const DeepCollectionEquality().hash(treatment);

  @override
  _$FirstAidDTOCopyWith<_FirstAidDTO> get copyWith =>
      __$FirstAidDTOCopyWithImpl<_FirstAidDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FirstAidDTOToJson(this);
  }
}

abstract class _FirstAidDTO extends FirstAidDTO {
  const _FirstAidDTO._() : super._();
  const factory _FirstAidDTO(
      {@required String woundType,
      @required List<String> treatment}) = _$_FirstAidDTO;

  factory _FirstAidDTO.fromJson(Map<String, dynamic> json) =
      _$_FirstAidDTO.fromJson;

  @override
  String get woundType;
  @override
  List<String> get treatment;
  @override
  _$FirstAidDTOCopyWith<_FirstAidDTO> get copyWith;
}

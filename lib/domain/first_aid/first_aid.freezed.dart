// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'first_aid.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$FirstAidTearOff {
  const _$FirstAidTearOff();

  _FirstAid call(
      {@required String woundType, @required KtList<String> treatment}) {
    return _FirstAid(
      woundType: woundType,
      treatment: treatment,
    );
  }
}

// ignore: unused_element
const $FirstAid = _$FirstAidTearOff();

mixin _$FirstAid {
  String get woundType;
  KtList<String> get treatment;

  $FirstAidCopyWith<FirstAid> get copyWith;
}

abstract class $FirstAidCopyWith<$Res> {
  factory $FirstAidCopyWith(FirstAid value, $Res Function(FirstAid) then) =
      _$FirstAidCopyWithImpl<$Res>;
  $Res call({String woundType, KtList<String> treatment});
}

class _$FirstAidCopyWithImpl<$Res> implements $FirstAidCopyWith<$Res> {
  _$FirstAidCopyWithImpl(this._value, this._then);

  final FirstAid _value;
  // ignore: unused_field
  final $Res Function(FirstAid) _then;

  @override
  $Res call({
    Object woundType = freezed,
    Object treatment = freezed,
  }) {
    return _then(_value.copyWith(
      woundType: woundType == freezed ? _value.woundType : woundType as String,
      treatment:
          treatment == freezed ? _value.treatment : treatment as KtList<String>,
    ));
  }
}

abstract class _$FirstAidCopyWith<$Res> implements $FirstAidCopyWith<$Res> {
  factory _$FirstAidCopyWith(_FirstAid value, $Res Function(_FirstAid) then) =
      __$FirstAidCopyWithImpl<$Res>;
  @override
  $Res call({String woundType, KtList<String> treatment});
}

class __$FirstAidCopyWithImpl<$Res> extends _$FirstAidCopyWithImpl<$Res>
    implements _$FirstAidCopyWith<$Res> {
  __$FirstAidCopyWithImpl(_FirstAid _value, $Res Function(_FirstAid) _then)
      : super(_value, (v) => _then(v as _FirstAid));

  @override
  _FirstAid get _value => super._value as _FirstAid;

  @override
  $Res call({
    Object woundType = freezed,
    Object treatment = freezed,
  }) {
    return _then(_FirstAid(
      woundType: woundType == freezed ? _value.woundType : woundType as String,
      treatment:
          treatment == freezed ? _value.treatment : treatment as KtList<String>,
    ));
  }
}

class _$_FirstAid implements _FirstAid {
  const _$_FirstAid({@required this.woundType, @required this.treatment})
      : assert(woundType != null),
        assert(treatment != null);

  @override
  final String woundType;
  @override
  final KtList<String> treatment;

  @override
  String toString() {
    return 'FirstAid(woundType: $woundType, treatment: $treatment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FirstAid &&
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
  _$FirstAidCopyWith<_FirstAid> get copyWith =>
      __$FirstAidCopyWithImpl<_FirstAid>(this, _$identity);
}

abstract class _FirstAid implements FirstAid {
  const factory _FirstAid(
      {@required String woundType,
      @required KtList<String> treatment}) = _$_FirstAid;

  @override
  String get woundType;
  @override
  KtList<String> get treatment;
  @override
  _$FirstAidCopyWith<_FirstAid> get copyWith;
}

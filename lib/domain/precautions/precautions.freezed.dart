// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'precautions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$PrecautionTearOff {
  const _$PrecautionTearOff();

  _Precaution call(
      {@required String title,
      @required KtList<String> before,
      @required KtList<String> during,
      @required KtList<String> after}) {
    return _Precaution(
      title: title,
      before: before,
      during: during,
      after: after,
    );
  }
}

// ignore: unused_element
const $Precaution = _$PrecautionTearOff();

mixin _$Precaution {
  String get title;
  KtList<String> get before;
  KtList<String> get during;
  KtList<String> get after;

  $PrecautionCopyWith<Precaution> get copyWith;
}

abstract class $PrecautionCopyWith<$Res> {
  factory $PrecautionCopyWith(
          Precaution value, $Res Function(Precaution) then) =
      _$PrecautionCopyWithImpl<$Res>;
  $Res call(
      {String title,
      KtList<String> before,
      KtList<String> during,
      KtList<String> after});
}

class _$PrecautionCopyWithImpl<$Res> implements $PrecautionCopyWith<$Res> {
  _$PrecautionCopyWithImpl(this._value, this._then);

  final Precaution _value;
  // ignore: unused_field
  final $Res Function(Precaution) _then;

  @override
  $Res call({
    Object title = freezed,
    Object before = freezed,
    Object during = freezed,
    Object after = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed ? _value.title : title as String,
      before: before == freezed ? _value.before : before as KtList<String>,
      during: during == freezed ? _value.during : during as KtList<String>,
      after: after == freezed ? _value.after : after as KtList<String>,
    ));
  }
}

abstract class _$PrecautionCopyWith<$Res> implements $PrecautionCopyWith<$Res> {
  factory _$PrecautionCopyWith(
          _Precaution value, $Res Function(_Precaution) then) =
      __$PrecautionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      KtList<String> before,
      KtList<String> during,
      KtList<String> after});
}

class __$PrecautionCopyWithImpl<$Res> extends _$PrecautionCopyWithImpl<$Res>
    implements _$PrecautionCopyWith<$Res> {
  __$PrecautionCopyWithImpl(
      _Precaution _value, $Res Function(_Precaution) _then)
      : super(_value, (v) => _then(v as _Precaution));

  @override
  _Precaution get _value => super._value as _Precaution;

  @override
  $Res call({
    Object title = freezed,
    Object before = freezed,
    Object during = freezed,
    Object after = freezed,
  }) {
    return _then(_Precaution(
      title: title == freezed ? _value.title : title as String,
      before: before == freezed ? _value.before : before as KtList<String>,
      during: during == freezed ? _value.during : during as KtList<String>,
      after: after == freezed ? _value.after : after as KtList<String>,
    ));
  }
}

class _$_Precaution implements _Precaution {
  const _$_Precaution(
      {@required this.title,
      @required this.before,
      @required this.during,
      @required this.after})
      : assert(title != null),
        assert(before != null),
        assert(during != null),
        assert(after != null);

  @override
  final String title;
  @override
  final KtList<String> before;
  @override
  final KtList<String> during;
  @override
  final KtList<String> after;

  @override
  String toString() {
    return 'Precaution(title: $title, before: $before, during: $during, after: $after)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Precaution &&
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
  _$PrecautionCopyWith<_Precaution> get copyWith =>
      __$PrecautionCopyWithImpl<_Precaution>(this, _$identity);
}

abstract class _Precaution implements Precaution {
  const factory _Precaution(
      {@required String title,
      @required KtList<String> before,
      @required KtList<String> during,
      @required KtList<String> after}) = _$_Precaution;

  @override
  String get title;
  @override
  KtList<String> get before;
  @override
  KtList<String> get during;
  @override
  KtList<String> get after;
  @override
  _$PrecautionCopyWith<_Precaution> get copyWith;
}

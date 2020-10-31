// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'precaution_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$PrecautionEventTearOff {
  const _$PrecautionEventTearOff();

  _LoadPrecautions loadPrecautions() {
    return const _LoadPrecautions();
  }
}

// ignore: unused_element
const $PrecautionEvent = _$PrecautionEventTearOff();

mixin _$PrecautionEvent {}

abstract class $PrecautionEventCopyWith<$Res> {
  factory $PrecautionEventCopyWith(
          PrecautionEvent value, $Res Function(PrecautionEvent) then) =
      _$PrecautionEventCopyWithImpl<$Res>;
}

class _$PrecautionEventCopyWithImpl<$Res>
    implements $PrecautionEventCopyWith<$Res> {
  _$PrecautionEventCopyWithImpl(this._value, this._then);

  final PrecautionEvent _value;
  // ignore: unused_field
  final $Res Function(PrecautionEvent) _then;
}

abstract class _$LoadPrecautionsCopyWith<$Res> {
  factory _$LoadPrecautionsCopyWith(
          _LoadPrecautions value, $Res Function(_LoadPrecautions) then) =
      __$LoadPrecautionsCopyWithImpl<$Res>;
}

class __$LoadPrecautionsCopyWithImpl<$Res>
    extends _$PrecautionEventCopyWithImpl<$Res>
    implements _$LoadPrecautionsCopyWith<$Res> {
  __$LoadPrecautionsCopyWithImpl(
      _LoadPrecautions _value, $Res Function(_LoadPrecautions) _then)
      : super(_value, (v) => _then(v as _LoadPrecautions));

  @override
  _LoadPrecautions get _value => super._value as _LoadPrecautions;
}

class _$_LoadPrecautions implements _LoadPrecautions {
  const _$_LoadPrecautions();

  @override
  String toString() {
    return 'PrecautionEvent.loadPrecautions()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadPrecautions);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _LoadPrecautions implements PrecautionEvent {
  const factory _LoadPrecautions() = _$_LoadPrecautions;
}

class _$PrecautionStateTearOff {
  const _$PrecautionStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadingProgress loadingProgress() {
    return const _LoadingProgress();
  }

  _LoadingSuccess loadingSuccess(KtList<Precaution> precautions) {
    return _LoadingSuccess(
      precautions,
    );
  }

  _LoadingFailiure loadingFailiure(PrecautionFailiure failiure) {
    return _LoadingFailiure(
      failiure,
    );
  }
}

// ignore: unused_element
const $PrecautionState = _$PrecautionStateTearOff();

mixin _$PrecautionState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadingProgress(),
    @required Result loadingSuccess(KtList<Precaution> precautions),
    @required Result loadingFailiure(PrecautionFailiure failiure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadingProgress(),
    Result loadingSuccess(KtList<Precaution> precautions),
    Result loadingFailiure(PrecautionFailiure failiure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadingProgress(_LoadingProgress value),
    @required Result loadingSuccess(_LoadingSuccess value),
    @required Result loadingFailiure(_LoadingFailiure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadingProgress(_LoadingProgress value),
    Result loadingSuccess(_LoadingSuccess value),
    Result loadingFailiure(_LoadingFailiure value),
    @required Result orElse(),
  });
}

abstract class $PrecautionStateCopyWith<$Res> {
  factory $PrecautionStateCopyWith(
          PrecautionState value, $Res Function(PrecautionState) then) =
      _$PrecautionStateCopyWithImpl<$Res>;
}

class _$PrecautionStateCopyWithImpl<$Res>
    implements $PrecautionStateCopyWith<$Res> {
  _$PrecautionStateCopyWithImpl(this._value, this._then);

  final PrecautionState _value;
  // ignore: unused_field
  final $Res Function(PrecautionState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$PrecautionStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'PrecautionState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadingProgress(),
    @required Result loadingSuccess(KtList<Precaution> precautions),
    @required Result loadingFailiure(PrecautionFailiure failiure),
  }) {
    assert(initial != null);
    assert(loadingProgress != null);
    assert(loadingSuccess != null);
    assert(loadingFailiure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadingProgress(),
    Result loadingSuccess(KtList<Precaution> precautions),
    Result loadingFailiure(PrecautionFailiure failiure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadingProgress(_LoadingProgress value),
    @required Result loadingSuccess(_LoadingSuccess value),
    @required Result loadingFailiure(_LoadingFailiure value),
  }) {
    assert(initial != null);
    assert(loadingProgress != null);
    assert(loadingSuccess != null);
    assert(loadingFailiure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadingProgress(_LoadingProgress value),
    Result loadingSuccess(_LoadingSuccess value),
    Result loadingFailiure(_LoadingFailiure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PrecautionState {
  const factory _Initial() = _$_Initial;
}

abstract class _$LoadingProgressCopyWith<$Res> {
  factory _$LoadingProgressCopyWith(
          _LoadingProgress value, $Res Function(_LoadingProgress) then) =
      __$LoadingProgressCopyWithImpl<$Res>;
}

class __$LoadingProgressCopyWithImpl<$Res>
    extends _$PrecautionStateCopyWithImpl<$Res>
    implements _$LoadingProgressCopyWith<$Res> {
  __$LoadingProgressCopyWithImpl(
      _LoadingProgress _value, $Res Function(_LoadingProgress) _then)
      : super(_value, (v) => _then(v as _LoadingProgress));

  @override
  _LoadingProgress get _value => super._value as _LoadingProgress;
}

class _$_LoadingProgress implements _LoadingProgress {
  const _$_LoadingProgress();

  @override
  String toString() {
    return 'PrecautionState.loadingProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadingProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadingProgress(),
    @required Result loadingSuccess(KtList<Precaution> precautions),
    @required Result loadingFailiure(PrecautionFailiure failiure),
  }) {
    assert(initial != null);
    assert(loadingProgress != null);
    assert(loadingSuccess != null);
    assert(loadingFailiure != null);
    return loadingProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadingProgress(),
    Result loadingSuccess(KtList<Precaution> precautions),
    Result loadingFailiure(PrecautionFailiure failiure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadingProgress != null) {
      return loadingProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadingProgress(_LoadingProgress value),
    @required Result loadingSuccess(_LoadingSuccess value),
    @required Result loadingFailiure(_LoadingFailiure value),
  }) {
    assert(initial != null);
    assert(loadingProgress != null);
    assert(loadingSuccess != null);
    assert(loadingFailiure != null);
    return loadingProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadingProgress(_LoadingProgress value),
    Result loadingSuccess(_LoadingSuccess value),
    Result loadingFailiure(_LoadingFailiure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadingProgress != null) {
      return loadingProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadingProgress implements PrecautionState {
  const factory _LoadingProgress() = _$_LoadingProgress;
}

abstract class _$LoadingSuccessCopyWith<$Res> {
  factory _$LoadingSuccessCopyWith(
          _LoadingSuccess value, $Res Function(_LoadingSuccess) then) =
      __$LoadingSuccessCopyWithImpl<$Res>;
  $Res call({KtList<Precaution> precautions});
}

class __$LoadingSuccessCopyWithImpl<$Res>
    extends _$PrecautionStateCopyWithImpl<$Res>
    implements _$LoadingSuccessCopyWith<$Res> {
  __$LoadingSuccessCopyWithImpl(
      _LoadingSuccess _value, $Res Function(_LoadingSuccess) _then)
      : super(_value, (v) => _then(v as _LoadingSuccess));

  @override
  _LoadingSuccess get _value => super._value as _LoadingSuccess;

  @override
  $Res call({
    Object precautions = freezed,
  }) {
    return _then(_LoadingSuccess(
      precautions == freezed
          ? _value.precautions
          : precautions as KtList<Precaution>,
    ));
  }
}

class _$_LoadingSuccess implements _LoadingSuccess {
  const _$_LoadingSuccess(this.precautions) : assert(precautions != null);

  @override
  final KtList<Precaution> precautions;

  @override
  String toString() {
    return 'PrecautionState.loadingSuccess(precautions: $precautions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadingSuccess &&
            (identical(other.precautions, precautions) ||
                const DeepCollectionEquality()
                    .equals(other.precautions, precautions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(precautions);

  @override
  _$LoadingSuccessCopyWith<_LoadingSuccess> get copyWith =>
      __$LoadingSuccessCopyWithImpl<_LoadingSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadingProgress(),
    @required Result loadingSuccess(KtList<Precaution> precautions),
    @required Result loadingFailiure(PrecautionFailiure failiure),
  }) {
    assert(initial != null);
    assert(loadingProgress != null);
    assert(loadingSuccess != null);
    assert(loadingFailiure != null);
    return loadingSuccess(precautions);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadingProgress(),
    Result loadingSuccess(KtList<Precaution> precautions),
    Result loadingFailiure(PrecautionFailiure failiure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadingSuccess != null) {
      return loadingSuccess(precautions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadingProgress(_LoadingProgress value),
    @required Result loadingSuccess(_LoadingSuccess value),
    @required Result loadingFailiure(_LoadingFailiure value),
  }) {
    assert(initial != null);
    assert(loadingProgress != null);
    assert(loadingSuccess != null);
    assert(loadingFailiure != null);
    return loadingSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadingProgress(_LoadingProgress value),
    Result loadingSuccess(_LoadingSuccess value),
    Result loadingFailiure(_LoadingFailiure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadingSuccess != null) {
      return loadingSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadingSuccess implements PrecautionState {
  const factory _LoadingSuccess(KtList<Precaution> precautions) =
      _$_LoadingSuccess;

  KtList<Precaution> get precautions;
  _$LoadingSuccessCopyWith<_LoadingSuccess> get copyWith;
}

abstract class _$LoadingFailiureCopyWith<$Res> {
  factory _$LoadingFailiureCopyWith(
          _LoadingFailiure value, $Res Function(_LoadingFailiure) then) =
      __$LoadingFailiureCopyWithImpl<$Res>;
  $Res call({PrecautionFailiure failiure});

  $PrecautionFailiureCopyWith<$Res> get failiure;
}

class __$LoadingFailiureCopyWithImpl<$Res>
    extends _$PrecautionStateCopyWithImpl<$Res>
    implements _$LoadingFailiureCopyWith<$Res> {
  __$LoadingFailiureCopyWithImpl(
      _LoadingFailiure _value, $Res Function(_LoadingFailiure) _then)
      : super(_value, (v) => _then(v as _LoadingFailiure));

  @override
  _LoadingFailiure get _value => super._value as _LoadingFailiure;

  @override
  $Res call({
    Object failiure = freezed,
  }) {
    return _then(_LoadingFailiure(
      failiure == freezed ? _value.failiure : failiure as PrecautionFailiure,
    ));
  }

  @override
  $PrecautionFailiureCopyWith<$Res> get failiure {
    if (_value.failiure == null) {
      return null;
    }
    return $PrecautionFailiureCopyWith<$Res>(_value.failiure, (value) {
      return _then(_value.copyWith(failiure: value));
    });
  }
}

class _$_LoadingFailiure implements _LoadingFailiure {
  const _$_LoadingFailiure(this.failiure) : assert(failiure != null);

  @override
  final PrecautionFailiure failiure;

  @override
  String toString() {
    return 'PrecautionState.loadingFailiure(failiure: $failiure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadingFailiure &&
            (identical(other.failiure, failiure) ||
                const DeepCollectionEquality()
                    .equals(other.failiure, failiure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failiure);

  @override
  _$LoadingFailiureCopyWith<_LoadingFailiure> get copyWith =>
      __$LoadingFailiureCopyWithImpl<_LoadingFailiure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadingProgress(),
    @required Result loadingSuccess(KtList<Precaution> precautions),
    @required Result loadingFailiure(PrecautionFailiure failiure),
  }) {
    assert(initial != null);
    assert(loadingProgress != null);
    assert(loadingSuccess != null);
    assert(loadingFailiure != null);
    return loadingFailiure(failiure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadingProgress(),
    Result loadingSuccess(KtList<Precaution> precautions),
    Result loadingFailiure(PrecautionFailiure failiure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadingFailiure != null) {
      return loadingFailiure(failiure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadingProgress(_LoadingProgress value),
    @required Result loadingSuccess(_LoadingSuccess value),
    @required Result loadingFailiure(_LoadingFailiure value),
  }) {
    assert(initial != null);
    assert(loadingProgress != null);
    assert(loadingSuccess != null);
    assert(loadingFailiure != null);
    return loadingFailiure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadingProgress(_LoadingProgress value),
    Result loadingSuccess(_LoadingSuccess value),
    Result loadingFailiure(_LoadingFailiure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadingFailiure != null) {
      return loadingFailiure(this);
    }
    return orElse();
  }
}

abstract class _LoadingFailiure implements PrecautionState {
  const factory _LoadingFailiure(PrecautionFailiure failiure) =
      _$_LoadingFailiure;

  PrecautionFailiure get failiure;
  _$LoadingFailiureCopyWith<_LoadingFailiure> get copyWith;
}

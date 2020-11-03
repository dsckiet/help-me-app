// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'firstaid_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$FirstaidEventTearOff {
  const _$FirstaidEventTearOff();

  _LoadFirstAids loadFirstAids() {
    return const _LoadFirstAids();
  }
}

// ignore: unused_element
const $FirstaidEvent = _$FirstaidEventTearOff();

mixin _$FirstaidEvent {}

abstract class $FirstaidEventCopyWith<$Res> {
  factory $FirstaidEventCopyWith(
          FirstaidEvent value, $Res Function(FirstaidEvent) then) =
      _$FirstaidEventCopyWithImpl<$Res>;
}

class _$FirstaidEventCopyWithImpl<$Res>
    implements $FirstaidEventCopyWith<$Res> {
  _$FirstaidEventCopyWithImpl(this._value, this._then);

  final FirstaidEvent _value;
  // ignore: unused_field
  final $Res Function(FirstaidEvent) _then;
}

abstract class _$LoadFirstAidsCopyWith<$Res> {
  factory _$LoadFirstAidsCopyWith(
          _LoadFirstAids value, $Res Function(_LoadFirstAids) then) =
      __$LoadFirstAidsCopyWithImpl<$Res>;
}

class __$LoadFirstAidsCopyWithImpl<$Res>
    extends _$FirstaidEventCopyWithImpl<$Res>
    implements _$LoadFirstAidsCopyWith<$Res> {
  __$LoadFirstAidsCopyWithImpl(
      _LoadFirstAids _value, $Res Function(_LoadFirstAids) _then)
      : super(_value, (v) => _then(v as _LoadFirstAids));

  @override
  _LoadFirstAids get _value => super._value as _LoadFirstAids;
}

class _$_LoadFirstAids implements _LoadFirstAids {
  const _$_LoadFirstAids();

  @override
  String toString() {
    return 'FirstaidEvent.loadFirstAids()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadFirstAids);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _LoadFirstAids implements FirstaidEvent {
  const factory _LoadFirstAids() = _$_LoadFirstAids;
}

class _$FirstaidStateTearOff {
  const _$FirstaidStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadingProgress loadingProgress() {
    return const _LoadingProgress();
  }

  _LoadingSuccess loadingSuccess(KtList<FirstAid> firstAids) {
    return _LoadingSuccess(
      firstAids,
    );
  }

  _LoadingFailiure loadingFailiure(FirstAidFailiure failiure) {
    return _LoadingFailiure(
      failiure,
    );
  }
}

// ignore: unused_element
const $FirstaidState = _$FirstaidStateTearOff();

mixin _$FirstaidState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadingProgress(),
    @required Result loadingSuccess(KtList<FirstAid> firstAids),
    @required Result loadingFailiure(FirstAidFailiure failiure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadingProgress(),
    Result loadingSuccess(KtList<FirstAid> firstAids),
    Result loadingFailiure(FirstAidFailiure failiure),
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

abstract class $FirstaidStateCopyWith<$Res> {
  factory $FirstaidStateCopyWith(
          FirstaidState value, $Res Function(FirstaidState) then) =
      _$FirstaidStateCopyWithImpl<$Res>;
}

class _$FirstaidStateCopyWithImpl<$Res>
    implements $FirstaidStateCopyWith<$Res> {
  _$FirstaidStateCopyWithImpl(this._value, this._then);

  final FirstaidState _value;
  // ignore: unused_field
  final $Res Function(FirstaidState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$FirstaidStateCopyWithImpl<$Res>
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
    return 'FirstaidState.initial()';
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
    @required Result loadingSuccess(KtList<FirstAid> firstAids),
    @required Result loadingFailiure(FirstAidFailiure failiure),
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
    Result loadingSuccess(KtList<FirstAid> firstAids),
    Result loadingFailiure(FirstAidFailiure failiure),
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

abstract class _Initial implements FirstaidState {
  const factory _Initial() = _$_Initial;
}

abstract class _$LoadingProgressCopyWith<$Res> {
  factory _$LoadingProgressCopyWith(
          _LoadingProgress value, $Res Function(_LoadingProgress) then) =
      __$LoadingProgressCopyWithImpl<$Res>;
}

class __$LoadingProgressCopyWithImpl<$Res>
    extends _$FirstaidStateCopyWithImpl<$Res>
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
    return 'FirstaidState.loadingProgress()';
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
    @required Result loadingSuccess(KtList<FirstAid> firstAids),
    @required Result loadingFailiure(FirstAidFailiure failiure),
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
    Result loadingSuccess(KtList<FirstAid> firstAids),
    Result loadingFailiure(FirstAidFailiure failiure),
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

abstract class _LoadingProgress implements FirstaidState {
  const factory _LoadingProgress() = _$_LoadingProgress;
}

abstract class _$LoadingSuccessCopyWith<$Res> {
  factory _$LoadingSuccessCopyWith(
          _LoadingSuccess value, $Res Function(_LoadingSuccess) then) =
      __$LoadingSuccessCopyWithImpl<$Res>;
  $Res call({KtList<FirstAid> firstAids});
}

class __$LoadingSuccessCopyWithImpl<$Res>
    extends _$FirstaidStateCopyWithImpl<$Res>
    implements _$LoadingSuccessCopyWith<$Res> {
  __$LoadingSuccessCopyWithImpl(
      _LoadingSuccess _value, $Res Function(_LoadingSuccess) _then)
      : super(_value, (v) => _then(v as _LoadingSuccess));

  @override
  _LoadingSuccess get _value => super._value as _LoadingSuccess;

  @override
  $Res call({
    Object firstAids = freezed,
  }) {
    return _then(_LoadingSuccess(
      firstAids == freezed ? _value.firstAids : firstAids as KtList<FirstAid>,
    ));
  }
}

class _$_LoadingSuccess implements _LoadingSuccess {
  const _$_LoadingSuccess(this.firstAids) : assert(firstAids != null);

  @override
  final KtList<FirstAid> firstAids;

  @override
  String toString() {
    return 'FirstaidState.loadingSuccess(firstAids: $firstAids)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadingSuccess &&
            (identical(other.firstAids, firstAids) ||
                const DeepCollectionEquality()
                    .equals(other.firstAids, firstAids)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(firstAids);

  @override
  _$LoadingSuccessCopyWith<_LoadingSuccess> get copyWith =>
      __$LoadingSuccessCopyWithImpl<_LoadingSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadingProgress(),
    @required Result loadingSuccess(KtList<FirstAid> firstAids),
    @required Result loadingFailiure(FirstAidFailiure failiure),
  }) {
    assert(initial != null);
    assert(loadingProgress != null);
    assert(loadingSuccess != null);
    assert(loadingFailiure != null);
    return loadingSuccess(firstAids);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadingProgress(),
    Result loadingSuccess(KtList<FirstAid> firstAids),
    Result loadingFailiure(FirstAidFailiure failiure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadingSuccess != null) {
      return loadingSuccess(firstAids);
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

abstract class _LoadingSuccess implements FirstaidState {
  const factory _LoadingSuccess(KtList<FirstAid> firstAids) = _$_LoadingSuccess;

  KtList<FirstAid> get firstAids;
  _$LoadingSuccessCopyWith<_LoadingSuccess> get copyWith;
}

abstract class _$LoadingFailiureCopyWith<$Res> {
  factory _$LoadingFailiureCopyWith(
          _LoadingFailiure value, $Res Function(_LoadingFailiure) then) =
      __$LoadingFailiureCopyWithImpl<$Res>;
  $Res call({FirstAidFailiure failiure});

  $FirstAidFailiureCopyWith<$Res> get failiure;
}

class __$LoadingFailiureCopyWithImpl<$Res>
    extends _$FirstaidStateCopyWithImpl<$Res>
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
      failiure == freezed ? _value.failiure : failiure as FirstAidFailiure,
    ));
  }

  @override
  $FirstAidFailiureCopyWith<$Res> get failiure {
    if (_value.failiure == null) {
      return null;
    }
    return $FirstAidFailiureCopyWith<$Res>(_value.failiure, (value) {
      return _then(_value.copyWith(failiure: value));
    });
  }
}

class _$_LoadingFailiure implements _LoadingFailiure {
  const _$_LoadingFailiure(this.failiure) : assert(failiure != null);

  @override
  final FirstAidFailiure failiure;

  @override
  String toString() {
    return 'FirstaidState.loadingFailiure(failiure: $failiure)';
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
    @required Result loadingSuccess(KtList<FirstAid> firstAids),
    @required Result loadingFailiure(FirstAidFailiure failiure),
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
    Result loadingSuccess(KtList<FirstAid> firstAids),
    Result loadingFailiure(FirstAidFailiure failiure),
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

abstract class _LoadingFailiure implements FirstaidState {
  const factory _LoadingFailiure(FirstAidFailiure failiure) =
      _$_LoadingFailiure;

  FirstAidFailiure get failiure;
  _$LoadingFailiureCopyWith<_LoadingFailiure> get copyWith;
}

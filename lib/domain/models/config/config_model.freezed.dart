// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'config_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ConfigModel _$ConfigModelFromJson(Map<String, dynamic> json) {
  return _ConfigModel.fromJson(json);
}

/// @nodoc
mixin _$ConfigModel {
  @JsonKey(name: 'isSubscriptionEnabled')
  bool get isSubscriptionEnabled => throw _privateConstructorUsedError;
  @JsonKey(name: 'isOTPEnabled')
  bool get isOTPEnabled => throw _privateConstructorUsedError;
  @JsonKey(name: 'isRatingEnabled')
  bool get isRatingEnabled => throw _privateConstructorUsedError;
  @JsonKey(name: 'showAvgRating')
  bool get showAvgRating => throw _privateConstructorUsedError;
  @JsonKey(name: 'contentLanguages')
  List<String> get languages => throw _privateConstructorUsedError;
  @JsonKey(name: 'contentTypes')
  List<ContentModel> get contents => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConfigModelCopyWith<ConfigModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfigModelCopyWith<$Res> {
  factory $ConfigModelCopyWith(
          ConfigModel value, $Res Function(ConfigModel) then) =
      _$ConfigModelCopyWithImpl<$Res, ConfigModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'isSubscriptionEnabled') bool isSubscriptionEnabled,
      @JsonKey(name: 'isOTPEnabled') bool isOTPEnabled,
      @JsonKey(name: 'isRatingEnabled') bool isRatingEnabled,
      @JsonKey(name: 'showAvgRating') bool showAvgRating,
      @JsonKey(name: 'contentLanguages') List<String> languages,
      @JsonKey(name: 'contentTypes') List<ContentModel> contents});
}

/// @nodoc
class _$ConfigModelCopyWithImpl<$Res, $Val extends ConfigModel>
    implements $ConfigModelCopyWith<$Res> {
  _$ConfigModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSubscriptionEnabled = null,
    Object? isOTPEnabled = null,
    Object? isRatingEnabled = null,
    Object? showAvgRating = null,
    Object? languages = null,
    Object? contents = null,
  }) {
    return _then(_value.copyWith(
      isSubscriptionEnabled: null == isSubscriptionEnabled
          ? _value.isSubscriptionEnabled
          : isSubscriptionEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isOTPEnabled: null == isOTPEnabled
          ? _value.isOTPEnabled
          : isOTPEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isRatingEnabled: null == isRatingEnabled
          ? _value.isRatingEnabled
          : isRatingEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      showAvgRating: null == showAvgRating
          ? _value.showAvgRating
          : showAvgRating // ignore: cast_nullable_to_non_nullable
              as bool,
      languages: null == languages
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      contents: null == contents
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as List<ContentModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ConfigModelCopyWith<$Res>
    implements $ConfigModelCopyWith<$Res> {
  factory _$$_ConfigModelCopyWith(
          _$_ConfigModel value, $Res Function(_$_ConfigModel) then) =
      __$$_ConfigModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'isSubscriptionEnabled') bool isSubscriptionEnabled,
      @JsonKey(name: 'isOTPEnabled') bool isOTPEnabled,
      @JsonKey(name: 'isRatingEnabled') bool isRatingEnabled,
      @JsonKey(name: 'showAvgRating') bool showAvgRating,
      @JsonKey(name: 'contentLanguages') List<String> languages,
      @JsonKey(name: 'contentTypes') List<ContentModel> contents});
}

/// @nodoc
class __$$_ConfigModelCopyWithImpl<$Res>
    extends _$ConfigModelCopyWithImpl<$Res, _$_ConfigModel>
    implements _$$_ConfigModelCopyWith<$Res> {
  __$$_ConfigModelCopyWithImpl(
      _$_ConfigModel _value, $Res Function(_$_ConfigModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSubscriptionEnabled = null,
    Object? isOTPEnabled = null,
    Object? isRatingEnabled = null,
    Object? showAvgRating = null,
    Object? languages = null,
    Object? contents = null,
  }) {
    return _then(_$_ConfigModel(
      isSubscriptionEnabled: null == isSubscriptionEnabled
          ? _value.isSubscriptionEnabled
          : isSubscriptionEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isOTPEnabled: null == isOTPEnabled
          ? _value.isOTPEnabled
          : isOTPEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isRatingEnabled: null == isRatingEnabled
          ? _value.isRatingEnabled
          : isRatingEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      showAvgRating: null == showAvgRating
          ? _value.showAvgRating
          : showAvgRating // ignore: cast_nullable_to_non_nullable
              as bool,
      languages: null == languages
          ? _value._languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      contents: null == contents
          ? _value._contents
          : contents // ignore: cast_nullable_to_non_nullable
              as List<ContentModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ConfigModel implements _ConfigModel {
  const _$_ConfigModel(
      {@JsonKey(name: 'isSubscriptionEnabled')
          required this.isSubscriptionEnabled,
      @JsonKey(name: 'isOTPEnabled')
          required this.isOTPEnabled,
      @JsonKey(name: 'isRatingEnabled')
          required this.isRatingEnabled,
      @JsonKey(name: 'showAvgRating')
          required this.showAvgRating,
      @JsonKey(name: 'contentLanguages')
          required final List<String> languages,
      @JsonKey(name: 'contentTypes')
          required final List<ContentModel> contents})
      : _languages = languages,
        _contents = contents;

  factory _$_ConfigModel.fromJson(Map<String, dynamic> json) =>
      _$$_ConfigModelFromJson(json);

  @override
  @JsonKey(name: 'isSubscriptionEnabled')
  final bool isSubscriptionEnabled;
  @override
  @JsonKey(name: 'isOTPEnabled')
  final bool isOTPEnabled;
  @override
  @JsonKey(name: 'isRatingEnabled')
  final bool isRatingEnabled;
  @override
  @JsonKey(name: 'showAvgRating')
  final bool showAvgRating;
  final List<String> _languages;
  @override
  @JsonKey(name: 'contentLanguages')
  List<String> get languages {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_languages);
  }

  final List<ContentModel> _contents;
  @override
  @JsonKey(name: 'contentTypes')
  List<ContentModel> get contents {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contents);
  }

  @override
  String toString() {
    return 'ConfigModel(isSubscriptionEnabled: $isSubscriptionEnabled, isOTPEnabled: $isOTPEnabled, isRatingEnabled: $isRatingEnabled, showAvgRating: $showAvgRating, languages: $languages, contents: $contents)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConfigModel &&
            (identical(other.isSubscriptionEnabled, isSubscriptionEnabled) ||
                other.isSubscriptionEnabled == isSubscriptionEnabled) &&
            (identical(other.isOTPEnabled, isOTPEnabled) ||
                other.isOTPEnabled == isOTPEnabled) &&
            (identical(other.isRatingEnabled, isRatingEnabled) ||
                other.isRatingEnabled == isRatingEnabled) &&
            (identical(other.showAvgRating, showAvgRating) ||
                other.showAvgRating == showAvgRating) &&
            const DeepCollectionEquality()
                .equals(other._languages, _languages) &&
            const DeepCollectionEquality().equals(other._contents, _contents));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      isSubscriptionEnabled,
      isOTPEnabled,
      isRatingEnabled,
      showAvgRating,
      const DeepCollectionEquality().hash(_languages),
      const DeepCollectionEquality().hash(_contents));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConfigModelCopyWith<_$_ConfigModel> get copyWith =>
      __$$_ConfigModelCopyWithImpl<_$_ConfigModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConfigModelToJson(
      this,
    );
  }
}

abstract class _ConfigModel implements ConfigModel {
  const factory _ConfigModel(
      {@JsonKey(name: 'isSubscriptionEnabled')
          required final bool isSubscriptionEnabled,
      @JsonKey(name: 'isOTPEnabled')
          required final bool isOTPEnabled,
      @JsonKey(name: 'isRatingEnabled')
          required final bool isRatingEnabled,
      @JsonKey(name: 'showAvgRating')
          required final bool showAvgRating,
      @JsonKey(name: 'contentLanguages')
          required final List<String> languages,
      @JsonKey(name: 'contentTypes')
          required final List<ContentModel> contents}) = _$_ConfigModel;

  factory _ConfigModel.fromJson(Map<String, dynamic> json) =
      _$_ConfigModel.fromJson;

  @override
  @JsonKey(name: 'isSubscriptionEnabled')
  bool get isSubscriptionEnabled;
  @override
  @JsonKey(name: 'isOTPEnabled')
  bool get isOTPEnabled;
  @override
  @JsonKey(name: 'isRatingEnabled')
  bool get isRatingEnabled;
  @override
  @JsonKey(name: 'showAvgRating')
  bool get showAvgRating;
  @override
  @JsonKey(name: 'contentLanguages')
  List<String> get languages;
  @override
  @JsonKey(name: 'contentTypes')
  List<ContentModel> get contents;
  @override
  @JsonKey(ignore: true)
  _$$_ConfigModelCopyWith<_$_ConfigModel> get copyWith =>
      throw _privateConstructorUsedError;
}

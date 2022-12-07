// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'content_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ContentModel _$ContentModelFromJson(Map<String, dynamic> json) {
  return _ContentModel.fromJson(json);
}

/// @nodoc
mixin _$ContentModel {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'contentTypeName')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'emptyImagePath')
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'catalogs')
  List<GenreModel> get genres => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContentModelCopyWith<ContentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentModelCopyWith<$Res> {
  factory $ContentModelCopyWith(
          ContentModel value, $Res Function(ContentModel) then) =
      _$ContentModelCopyWithImpl<$Res, ContentModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'contentTypeName') String name,
      @JsonKey(name: 'emptyImagePath') String image,
      @JsonKey(name: 'catalogs') List<GenreModel> genres});
}

/// @nodoc
class _$ContentModelCopyWithImpl<$Res, $Val extends ContentModel>
    implements $ContentModelCopyWith<$Res> {
  _$ContentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
    Object? genres = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      genres: null == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<GenreModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ContentModelCopyWith<$Res>
    implements $ContentModelCopyWith<$Res> {
  factory _$$_ContentModelCopyWith(
          _$_ContentModel value, $Res Function(_$_ContentModel) then) =
      __$$_ContentModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'contentTypeName') String name,
      @JsonKey(name: 'emptyImagePath') String image,
      @JsonKey(name: 'catalogs') List<GenreModel> genres});
}

/// @nodoc
class __$$_ContentModelCopyWithImpl<$Res>
    extends _$ContentModelCopyWithImpl<$Res, _$_ContentModel>
    implements _$$_ContentModelCopyWith<$Res> {
  __$$_ContentModelCopyWithImpl(
      _$_ContentModel _value, $Res Function(_$_ContentModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
    Object? genres = null,
  }) {
    return _then(_$_ContentModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      genres: null == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<GenreModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ContentModel implements _ContentModel {
  const _$_ContentModel(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'contentTypeName') required this.name,
      @JsonKey(name: 'emptyImagePath') required this.image,
      @JsonKey(name: 'catalogs') required final List<GenreModel> genres})
      : _genres = genres;

  factory _$_ContentModel.fromJson(Map<String, dynamic> json) =>
      _$$_ContentModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'contentTypeName')
  final String name;
  @override
  @JsonKey(name: 'emptyImagePath')
  final String image;
  final List<GenreModel> _genres;
  @override
  @JsonKey(name: 'catalogs')
  List<GenreModel> get genres {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genres);
  }

  @override
  String toString() {
    return 'ContentModel(id: $id, name: $name, image: $image, genres: $genres)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContentModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality().equals(other._genres, _genres));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, image,
      const DeepCollectionEquality().hash(_genres));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContentModelCopyWith<_$_ContentModel> get copyWith =>
      __$$_ContentModelCopyWithImpl<_$_ContentModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContentModelToJson(
      this,
    );
  }
}

abstract class _ContentModel implements ContentModel {
  const factory _ContentModel(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'contentTypeName') required final String name,
          @JsonKey(name: 'emptyImagePath') required final String image,
          @JsonKey(name: 'catalogs') required final List<GenreModel> genres}) =
      _$_ContentModel;

  factory _ContentModel.fromJson(Map<String, dynamic> json) =
      _$_ContentModel.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'contentTypeName')
  String get name;
  @override
  @JsonKey(name: 'emptyImagePath')
  String get image;
  @override
  @JsonKey(name: 'catalogs')
  List<GenreModel> get genres;
  @override
  @JsonKey(ignore: true)
  _$$_ContentModelCopyWith<_$_ContentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

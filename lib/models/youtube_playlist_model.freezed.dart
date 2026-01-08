// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'youtube_playlist_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

YoutubePlaylistModel _$YoutubePlaylistModelFromJson(Map<String, dynamic> json) {
  return _YoutubePlaylistModel.fromJson(json);
}

/// @nodoc
mixin _$YoutubePlaylistModel {
  List<YoutubeItem> get items => throw _privateConstructorUsedError;

  /// Serializes this YoutubePlaylistModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of YoutubePlaylistModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $YoutubePlaylistModelCopyWith<YoutubePlaylistModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YoutubePlaylistModelCopyWith<$Res> {
  factory $YoutubePlaylistModelCopyWith(
    YoutubePlaylistModel value,
    $Res Function(YoutubePlaylistModel) then,
  ) = _$YoutubePlaylistModelCopyWithImpl<$Res, YoutubePlaylistModel>;
  @useResult
  $Res call({List<YoutubeItem> items});
}

/// @nodoc
class _$YoutubePlaylistModelCopyWithImpl<
  $Res,
  $Val extends YoutubePlaylistModel
>
    implements $YoutubePlaylistModelCopyWith<$Res> {
  _$YoutubePlaylistModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of YoutubePlaylistModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? items = null}) {
    return _then(
      _value.copyWith(
            items: null == items
                ? _value.items
                : items // ignore: cast_nullable_to_non_nullable
                      as List<YoutubeItem>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$YoutubePlaylistModelImplCopyWith<$Res>
    implements $YoutubePlaylistModelCopyWith<$Res> {
  factory _$$YoutubePlaylistModelImplCopyWith(
    _$YoutubePlaylistModelImpl value,
    $Res Function(_$YoutubePlaylistModelImpl) then,
  ) = __$$YoutubePlaylistModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<YoutubeItem> items});
}

/// @nodoc
class __$$YoutubePlaylistModelImplCopyWithImpl<$Res>
    extends _$YoutubePlaylistModelCopyWithImpl<$Res, _$YoutubePlaylistModelImpl>
    implements _$$YoutubePlaylistModelImplCopyWith<$Res> {
  __$$YoutubePlaylistModelImplCopyWithImpl(
    _$YoutubePlaylistModelImpl _value,
    $Res Function(_$YoutubePlaylistModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of YoutubePlaylistModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? items = null}) {
    return _then(
      _$YoutubePlaylistModelImpl(
        items: null == items
            ? _value._items
            : items // ignore: cast_nullable_to_non_nullable
                  as List<YoutubeItem>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$YoutubePlaylistModelImpl implements _YoutubePlaylistModel {
  const _$YoutubePlaylistModelImpl({required final List<YoutubeItem> items})
    : _items = items;

  factory _$YoutubePlaylistModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$YoutubePlaylistModelImplFromJson(json);

  final List<YoutubeItem> _items;
  @override
  List<YoutubeItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'YoutubePlaylistModel(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$YoutubePlaylistModelImpl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  /// Create a copy of YoutubePlaylistModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$YoutubePlaylistModelImplCopyWith<_$YoutubePlaylistModelImpl>
  get copyWith =>
      __$$YoutubePlaylistModelImplCopyWithImpl<_$YoutubePlaylistModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$YoutubePlaylistModelImplToJson(this);
  }
}

abstract class _YoutubePlaylistModel implements YoutubePlaylistModel {
  const factory _YoutubePlaylistModel({
    required final List<YoutubeItem> items,
  }) = _$YoutubePlaylistModelImpl;

  factory _YoutubePlaylistModel.fromJson(Map<String, dynamic> json) =
      _$YoutubePlaylistModelImpl.fromJson;

  @override
  List<YoutubeItem> get items;

  /// Create a copy of YoutubePlaylistModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$YoutubePlaylistModelImplCopyWith<_$YoutubePlaylistModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}

YoutubeItem _$YoutubeItemFromJson(Map<String, dynamic> json) {
  return _YoutubeItem.fromJson(json);
}

/// @nodoc
mixin _$YoutubeItem {
  YoutubeSnippet get snippet => throw _privateConstructorUsedError;

  /// Serializes this YoutubeItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of YoutubeItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $YoutubeItemCopyWith<YoutubeItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YoutubeItemCopyWith<$Res> {
  factory $YoutubeItemCopyWith(
    YoutubeItem value,
    $Res Function(YoutubeItem) then,
  ) = _$YoutubeItemCopyWithImpl<$Res, YoutubeItem>;
  @useResult
  $Res call({YoutubeSnippet snippet});

  $YoutubeSnippetCopyWith<$Res> get snippet;
}

/// @nodoc
class _$YoutubeItemCopyWithImpl<$Res, $Val extends YoutubeItem>
    implements $YoutubeItemCopyWith<$Res> {
  _$YoutubeItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of YoutubeItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? snippet = null}) {
    return _then(
      _value.copyWith(
            snippet: null == snippet
                ? _value.snippet
                : snippet // ignore: cast_nullable_to_non_nullable
                      as YoutubeSnippet,
          )
          as $Val,
    );
  }

  /// Create a copy of YoutubeItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $YoutubeSnippetCopyWith<$Res> get snippet {
    return $YoutubeSnippetCopyWith<$Res>(_value.snippet, (value) {
      return _then(_value.copyWith(snippet: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$YoutubeItemImplCopyWith<$Res>
    implements $YoutubeItemCopyWith<$Res> {
  factory _$$YoutubeItemImplCopyWith(
    _$YoutubeItemImpl value,
    $Res Function(_$YoutubeItemImpl) then,
  ) = __$$YoutubeItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({YoutubeSnippet snippet});

  @override
  $YoutubeSnippetCopyWith<$Res> get snippet;
}

/// @nodoc
class __$$YoutubeItemImplCopyWithImpl<$Res>
    extends _$YoutubeItemCopyWithImpl<$Res, _$YoutubeItemImpl>
    implements _$$YoutubeItemImplCopyWith<$Res> {
  __$$YoutubeItemImplCopyWithImpl(
    _$YoutubeItemImpl _value,
    $Res Function(_$YoutubeItemImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of YoutubeItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? snippet = null}) {
    return _then(
      _$YoutubeItemImpl(
        snippet: null == snippet
            ? _value.snippet
            : snippet // ignore: cast_nullable_to_non_nullable
                  as YoutubeSnippet,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$YoutubeItemImpl implements _YoutubeItem {
  const _$YoutubeItemImpl({required this.snippet});

  factory _$YoutubeItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$YoutubeItemImplFromJson(json);

  @override
  final YoutubeSnippet snippet;

  @override
  String toString() {
    return 'YoutubeItem(snippet: $snippet)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$YoutubeItemImpl &&
            (identical(other.snippet, snippet) || other.snippet == snippet));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, snippet);

  /// Create a copy of YoutubeItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$YoutubeItemImplCopyWith<_$YoutubeItemImpl> get copyWith =>
      __$$YoutubeItemImplCopyWithImpl<_$YoutubeItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$YoutubeItemImplToJson(this);
  }
}

abstract class _YoutubeItem implements YoutubeItem {
  const factory _YoutubeItem({required final YoutubeSnippet snippet}) =
      _$YoutubeItemImpl;

  factory _YoutubeItem.fromJson(Map<String, dynamic> json) =
      _$YoutubeItemImpl.fromJson;

  @override
  YoutubeSnippet get snippet;

  /// Create a copy of YoutubeItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$YoutubeItemImplCopyWith<_$YoutubeItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

YoutubeSnippet _$YoutubeSnippetFromJson(Map<String, dynamic> json) {
  return _YoutubeSnippet.fromJson(json);
}

/// @nodoc
mixin _$YoutubeSnippet {
  String get title => throw _privateConstructorUsedError;
  String get channelTitle => throw _privateConstructorUsedError;
  YoutubeThumbnails get thumbnails => throw _privateConstructorUsedError;

  /// Serializes this YoutubeSnippet to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of YoutubeSnippet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $YoutubeSnippetCopyWith<YoutubeSnippet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YoutubeSnippetCopyWith<$Res> {
  factory $YoutubeSnippetCopyWith(
    YoutubeSnippet value,
    $Res Function(YoutubeSnippet) then,
  ) = _$YoutubeSnippetCopyWithImpl<$Res, YoutubeSnippet>;
  @useResult
  $Res call({String title, String channelTitle, YoutubeThumbnails thumbnails});

  $YoutubeThumbnailsCopyWith<$Res> get thumbnails;
}

/// @nodoc
class _$YoutubeSnippetCopyWithImpl<$Res, $Val extends YoutubeSnippet>
    implements $YoutubeSnippetCopyWith<$Res> {
  _$YoutubeSnippetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of YoutubeSnippet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? channelTitle = null,
    Object? thumbnails = null,
  }) {
    return _then(
      _value.copyWith(
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            channelTitle: null == channelTitle
                ? _value.channelTitle
                : channelTitle // ignore: cast_nullable_to_non_nullable
                      as String,
            thumbnails: null == thumbnails
                ? _value.thumbnails
                : thumbnails // ignore: cast_nullable_to_non_nullable
                      as YoutubeThumbnails,
          )
          as $Val,
    );
  }

  /// Create a copy of YoutubeSnippet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $YoutubeThumbnailsCopyWith<$Res> get thumbnails {
    return $YoutubeThumbnailsCopyWith<$Res>(_value.thumbnails, (value) {
      return _then(_value.copyWith(thumbnails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$YoutubeSnippetImplCopyWith<$Res>
    implements $YoutubeSnippetCopyWith<$Res> {
  factory _$$YoutubeSnippetImplCopyWith(
    _$YoutubeSnippetImpl value,
    $Res Function(_$YoutubeSnippetImpl) then,
  ) = __$$YoutubeSnippetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String channelTitle, YoutubeThumbnails thumbnails});

  @override
  $YoutubeThumbnailsCopyWith<$Res> get thumbnails;
}

/// @nodoc
class __$$YoutubeSnippetImplCopyWithImpl<$Res>
    extends _$YoutubeSnippetCopyWithImpl<$Res, _$YoutubeSnippetImpl>
    implements _$$YoutubeSnippetImplCopyWith<$Res> {
  __$$YoutubeSnippetImplCopyWithImpl(
    _$YoutubeSnippetImpl _value,
    $Res Function(_$YoutubeSnippetImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of YoutubeSnippet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? channelTitle = null,
    Object? thumbnails = null,
  }) {
    return _then(
      _$YoutubeSnippetImpl(
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        channelTitle: null == channelTitle
            ? _value.channelTitle
            : channelTitle // ignore: cast_nullable_to_non_nullable
                  as String,
        thumbnails: null == thumbnails
            ? _value.thumbnails
            : thumbnails // ignore: cast_nullable_to_non_nullable
                  as YoutubeThumbnails,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$YoutubeSnippetImpl implements _YoutubeSnippet {
  const _$YoutubeSnippetImpl({
    required this.title,
    required this.channelTitle,
    required this.thumbnails,
  });

  factory _$YoutubeSnippetImpl.fromJson(Map<String, dynamic> json) =>
      _$$YoutubeSnippetImplFromJson(json);

  @override
  final String title;
  @override
  final String channelTitle;
  @override
  final YoutubeThumbnails thumbnails;

  @override
  String toString() {
    return 'YoutubeSnippet(title: $title, channelTitle: $channelTitle, thumbnails: $thumbnails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$YoutubeSnippetImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.channelTitle, channelTitle) ||
                other.channelTitle == channelTitle) &&
            (identical(other.thumbnails, thumbnails) ||
                other.thumbnails == thumbnails));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, channelTitle, thumbnails);

  /// Create a copy of YoutubeSnippet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$YoutubeSnippetImplCopyWith<_$YoutubeSnippetImpl> get copyWith =>
      __$$YoutubeSnippetImplCopyWithImpl<_$YoutubeSnippetImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$YoutubeSnippetImplToJson(this);
  }
}

abstract class _YoutubeSnippet implements YoutubeSnippet {
  const factory _YoutubeSnippet({
    required final String title,
    required final String channelTitle,
    required final YoutubeThumbnails thumbnails,
  }) = _$YoutubeSnippetImpl;

  factory _YoutubeSnippet.fromJson(Map<String, dynamic> json) =
      _$YoutubeSnippetImpl.fromJson;

  @override
  String get title;
  @override
  String get channelTitle;
  @override
  YoutubeThumbnails get thumbnails;

  /// Create a copy of YoutubeSnippet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$YoutubeSnippetImplCopyWith<_$YoutubeSnippetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

YoutubeThumbnails _$YoutubeThumbnailsFromJson(Map<String, dynamic> json) {
  return _YoutubeThumbnails.fromJson(json);
}

/// @nodoc
mixin _$YoutubeThumbnails {
  YoutubeThumbnail get medium => throw _privateConstructorUsedError;

  /// Serializes this YoutubeThumbnails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of YoutubeThumbnails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $YoutubeThumbnailsCopyWith<YoutubeThumbnails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YoutubeThumbnailsCopyWith<$Res> {
  factory $YoutubeThumbnailsCopyWith(
    YoutubeThumbnails value,
    $Res Function(YoutubeThumbnails) then,
  ) = _$YoutubeThumbnailsCopyWithImpl<$Res, YoutubeThumbnails>;
  @useResult
  $Res call({YoutubeThumbnail medium});

  $YoutubeThumbnailCopyWith<$Res> get medium;
}

/// @nodoc
class _$YoutubeThumbnailsCopyWithImpl<$Res, $Val extends YoutubeThumbnails>
    implements $YoutubeThumbnailsCopyWith<$Res> {
  _$YoutubeThumbnailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of YoutubeThumbnails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? medium = null}) {
    return _then(
      _value.copyWith(
            medium: null == medium
                ? _value.medium
                : medium // ignore: cast_nullable_to_non_nullable
                      as YoutubeThumbnail,
          )
          as $Val,
    );
  }

  /// Create a copy of YoutubeThumbnails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $YoutubeThumbnailCopyWith<$Res> get medium {
    return $YoutubeThumbnailCopyWith<$Res>(_value.medium, (value) {
      return _then(_value.copyWith(medium: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$YoutubeThumbnailsImplCopyWith<$Res>
    implements $YoutubeThumbnailsCopyWith<$Res> {
  factory _$$YoutubeThumbnailsImplCopyWith(
    _$YoutubeThumbnailsImpl value,
    $Res Function(_$YoutubeThumbnailsImpl) then,
  ) = __$$YoutubeThumbnailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({YoutubeThumbnail medium});

  @override
  $YoutubeThumbnailCopyWith<$Res> get medium;
}

/// @nodoc
class __$$YoutubeThumbnailsImplCopyWithImpl<$Res>
    extends _$YoutubeThumbnailsCopyWithImpl<$Res, _$YoutubeThumbnailsImpl>
    implements _$$YoutubeThumbnailsImplCopyWith<$Res> {
  __$$YoutubeThumbnailsImplCopyWithImpl(
    _$YoutubeThumbnailsImpl _value,
    $Res Function(_$YoutubeThumbnailsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of YoutubeThumbnails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? medium = null}) {
    return _then(
      _$YoutubeThumbnailsImpl(
        medium: null == medium
            ? _value.medium
            : medium // ignore: cast_nullable_to_non_nullable
                  as YoutubeThumbnail,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$YoutubeThumbnailsImpl implements _YoutubeThumbnails {
  const _$YoutubeThumbnailsImpl({required this.medium});

  factory _$YoutubeThumbnailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$YoutubeThumbnailsImplFromJson(json);

  @override
  final YoutubeThumbnail medium;

  @override
  String toString() {
    return 'YoutubeThumbnails(medium: $medium)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$YoutubeThumbnailsImpl &&
            (identical(other.medium, medium) || other.medium == medium));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, medium);

  /// Create a copy of YoutubeThumbnails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$YoutubeThumbnailsImplCopyWith<_$YoutubeThumbnailsImpl> get copyWith =>
      __$$YoutubeThumbnailsImplCopyWithImpl<_$YoutubeThumbnailsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$YoutubeThumbnailsImplToJson(this);
  }
}

abstract class _YoutubeThumbnails implements YoutubeThumbnails {
  const factory _YoutubeThumbnails({required final YoutubeThumbnail medium}) =
      _$YoutubeThumbnailsImpl;

  factory _YoutubeThumbnails.fromJson(Map<String, dynamic> json) =
      _$YoutubeThumbnailsImpl.fromJson;

  @override
  YoutubeThumbnail get medium;

  /// Create a copy of YoutubeThumbnails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$YoutubeThumbnailsImplCopyWith<_$YoutubeThumbnailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

YoutubeThumbnail _$YoutubeThumbnailFromJson(Map<String, dynamic> json) {
  return _YoutubeThumbnail.fromJson(json);
}

/// @nodoc
mixin _$YoutubeThumbnail {
  String get url => throw _privateConstructorUsedError;

  /// Serializes this YoutubeThumbnail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of YoutubeThumbnail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $YoutubeThumbnailCopyWith<YoutubeThumbnail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YoutubeThumbnailCopyWith<$Res> {
  factory $YoutubeThumbnailCopyWith(
    YoutubeThumbnail value,
    $Res Function(YoutubeThumbnail) then,
  ) = _$YoutubeThumbnailCopyWithImpl<$Res, YoutubeThumbnail>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class _$YoutubeThumbnailCopyWithImpl<$Res, $Val extends YoutubeThumbnail>
    implements $YoutubeThumbnailCopyWith<$Res> {
  _$YoutubeThumbnailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of YoutubeThumbnail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? url = null}) {
    return _then(
      _value.copyWith(
            url: null == url
                ? _value.url
                : url // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$YoutubeThumbnailImplCopyWith<$Res>
    implements $YoutubeThumbnailCopyWith<$Res> {
  factory _$$YoutubeThumbnailImplCopyWith(
    _$YoutubeThumbnailImpl value,
    $Res Function(_$YoutubeThumbnailImpl) then,
  ) = __$$YoutubeThumbnailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$YoutubeThumbnailImplCopyWithImpl<$Res>
    extends _$YoutubeThumbnailCopyWithImpl<$Res, _$YoutubeThumbnailImpl>
    implements _$$YoutubeThumbnailImplCopyWith<$Res> {
  __$$YoutubeThumbnailImplCopyWithImpl(
    _$YoutubeThumbnailImpl _value,
    $Res Function(_$YoutubeThumbnailImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of YoutubeThumbnail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? url = null}) {
    return _then(
      _$YoutubeThumbnailImpl(
        url: null == url
            ? _value.url
            : url // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$YoutubeThumbnailImpl implements _YoutubeThumbnail {
  const _$YoutubeThumbnailImpl({required this.url});

  factory _$YoutubeThumbnailImpl.fromJson(Map<String, dynamic> json) =>
      _$$YoutubeThumbnailImplFromJson(json);

  @override
  final String url;

  @override
  String toString() {
    return 'YoutubeThumbnail(url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$YoutubeThumbnailImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url);

  /// Create a copy of YoutubeThumbnail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$YoutubeThumbnailImplCopyWith<_$YoutubeThumbnailImpl> get copyWith =>
      __$$YoutubeThumbnailImplCopyWithImpl<_$YoutubeThumbnailImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$YoutubeThumbnailImplToJson(this);
  }
}

abstract class _YoutubeThumbnail implements YoutubeThumbnail {
  const factory _YoutubeThumbnail({required final String url}) =
      _$YoutubeThumbnailImpl;

  factory _YoutubeThumbnail.fromJson(Map<String, dynamic> json) =
      _$YoutubeThumbnailImpl.fromJson;

  @override
  String get url;

  /// Create a copy of YoutubeThumbnail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$YoutubeThumbnailImplCopyWith<_$YoutubeThumbnailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

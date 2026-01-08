// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'youtube_playlist_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$YoutubePlaylistModelImpl _$$YoutubePlaylistModelImplFromJson(
  Map<String, dynamic> json,
) => _$YoutubePlaylistModelImpl(
  items: (json['items'] as List<dynamic>)
      .map((e) => YoutubeItem.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$YoutubePlaylistModelImplToJson(
  _$YoutubePlaylistModelImpl instance,
) => <String, dynamic>{'items': instance.items};

_$YoutubeItemImpl _$$YoutubeItemImplFromJson(Map<String, dynamic> json) =>
    _$YoutubeItemImpl(
      snippet: YoutubeSnippet.fromJson(json['snippet'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$YoutubeItemImplToJson(_$YoutubeItemImpl instance) =>
    <String, dynamic>{'snippet': instance.snippet};

_$YoutubeSnippetImpl _$$YoutubeSnippetImplFromJson(Map<String, dynamic> json) =>
    _$YoutubeSnippetImpl(
      title: json['title'] as String,
      channelTitle: json['channelTitle'] as String,
      thumbnails: YoutubeThumbnails.fromJson(
        json['thumbnails'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$$YoutubeSnippetImplToJson(
  _$YoutubeSnippetImpl instance,
) => <String, dynamic>{
  'title': instance.title,
  'channelTitle': instance.channelTitle,
  'thumbnails': instance.thumbnails,
};

_$YoutubeThumbnailsImpl _$$YoutubeThumbnailsImplFromJson(
  Map<String, dynamic> json,
) => _$YoutubeThumbnailsImpl(
  medium: YoutubeThumbnail.fromJson(json['medium'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$YoutubeThumbnailsImplToJson(
  _$YoutubeThumbnailsImpl instance,
) => <String, dynamic>{'medium': instance.medium};

_$YoutubeThumbnailImpl _$$YoutubeThumbnailImplFromJson(
  Map<String, dynamic> json,
) => _$YoutubeThumbnailImpl(url: json['url'] as String);

Map<String, dynamic> _$$YoutubeThumbnailImplToJson(
  _$YoutubeThumbnailImpl instance,
) => <String, dynamic>{'url': instance.url};

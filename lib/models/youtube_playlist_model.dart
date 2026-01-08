import 'package:freezed_annotation/freezed_annotation.dart';

part 'youtube_playlist_model.freezed.dart';
part 'youtube_playlist_model.g.dart';

@freezed
class YoutubePlaylistModel with _$YoutubePlaylistModel {
  const factory YoutubePlaylistModel({
    required List<YoutubeItem> items,
  }) = _YoutubePlaylistModel;

  factory YoutubePlaylistModel.fromJson(Map<String, dynamic> json) =>
      _$YoutubePlaylistModelFromJson(json);
}

@freezed
class YoutubeItem with _$YoutubeItem {
  const factory YoutubeItem({
    required YoutubeSnippet snippet,
  }) = _YoutubeItem;

  factory YoutubeItem.fromJson(Map<String, dynamic> json) =>
      _$YoutubeItemFromJson(json);
}

@freezed
class YoutubeSnippet with _$YoutubeSnippet {
  const factory YoutubeSnippet({
    required String title,
    required String channelTitle,
    required YoutubeThumbnails thumbnails,
  }) = _YoutubeSnippet;

  factory YoutubeSnippet.fromJson(Map<String, dynamic> json) =>
      _$YoutubeSnippetFromJson(json);
}

@freezed
class YoutubeThumbnails with _$YoutubeThumbnails {
  const factory YoutubeThumbnails({
    required YoutubeThumbnail medium,
  }) = _YoutubeThumbnails;

  factory YoutubeThumbnails.fromJson(Map<String, dynamic> json) =>
      _$YoutubeThumbnailsFromJson(json);
}

@freezed
class YoutubeThumbnail with _$YoutubeThumbnail {
  const factory YoutubeThumbnail({
    required String url,
  }) = _YoutubeThumbnail;

  factory YoutubeThumbnail.fromJson(Map<String, dynamic> json) =>
      _$YoutubeThumbnailFromJson(json);
}



import 'package:learnify_app/config/constants/app_urls.dart';
import 'package:learnify_app/config/constants/youtube_api_key.dart';
import 'package:learnify_app/data/network/network_api_services.dart';
import 'package:learnify_app/models/youtube_playlist_model.dart';

class YoutubeRepo {
  final _youtubeApi = NetworkServiceApi();

  Future<YoutubePlaylistModel> getPlaylist({
    required String playlistId,
  }) async {
    final response = await _youtubeApi.getApi(
      "${AppUrls.youtubeApiUrl}"
      "?part=snippet"
      "&playlistId=$playlistId"
      "&key=${YoutubeApiKey.youtubeApiKey}",
    );

    return YoutubePlaylistModel.fromJson(response);
  }

  Future<YoutubePlaylistModel> searchPlaylists({
    required String query,
  }) async {
    final response = await _youtubeApi.getApi(
      "https://www.googleapis.com/youtube/v3/search"
      "?part=snippet"
      "&type=playlist"
      "&maxResults=10"
      "&q=$query"
      "&key=${YoutubeApiKey.youtubeApiKey}",
    );

    return YoutubePlaylistModel.fromJson(response);
  }

  Future<YoutubePlaylistModel> getPlaylistItems({
    required String playlistId,
    int maxResults = 50,
  }) async {
    final response = await _youtubeApi.getApi(
      "https://www.googleapis.com/youtube/v3/playlistItems"
      "?part=snippet"
      "&playlistId=$playlistId"
      "&maxResults=$maxResults"
      "&key=${YoutubeApiKey.youtubeApiKey}",
    );

    final List items = response['items'] ?? [];

    final mappedItems = items.map((json) {
      final snippetJson = json['snippet'] as Map<String, dynamic>;
      final resourceIdJson = snippetJson['resourceId'] as Map<String, dynamic>?;

      return YoutubeItem(
        snippet: YoutubeSnippet.fromJson(snippetJson),
        resourceId: resourceIdJson != null
            ? YoutubeResourceId.fromJson(resourceIdJson)
            : null,
      );
    }).toList();

    return YoutubePlaylistModel(items: mappedItems);
  }
}
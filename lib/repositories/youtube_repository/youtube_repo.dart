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
}

// class YoutubeRepo {
//   final _youtubeApi = NetworkServiceApi();

//   Future<YoutubePlaylistModel> youtubeApi() async {
//     final response = await _youtubeApi.getApi(
//       "${AppUrls.youtubeApiUrl}"
//       "?part=snippet"
//       "&playlistId=PLFyjjoCMAPtxq8V9fuVmgsYKLNIKqSEV4"
//       "&key=${YoutubeApiKey.youtubeApiKey}",
//     );

//     return YoutubePlaylistModel.fromJson(response);
//   }
// }

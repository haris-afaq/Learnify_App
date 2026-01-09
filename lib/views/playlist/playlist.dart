import 'package:flutter/material.dart';
import 'package:learnify_app/config/Components/app_bar.dart';
import 'package:learnify_app/config/Components/text_styles/body_text.dart';
import 'package:learnify_app/config/Components/text_styles/heading3.dart';
import 'package:learnify_app/config/constants/colors.dart';
import 'package:learnify_app/config/extenssions/sizedBox.dart';
import 'package:learnify_app/models/youtube_playlist_model.dart';
import 'package:learnify_app/repositories/youtube_repository/youtube_repo.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class PlaylistScreen extends StatefulWidget {
  final String playlistId;
  final String playlistTitle;
  final String channelTitle;

  const PlaylistScreen({
    super.key,
    required this.playlistId,
    required this.playlistTitle,
    required this.channelTitle,
  });

  static const List<Tab> playlistTabs = <Tab>[
    Tab(text: "Videos"),
    Tab(text: "Notes"),
    Tab(text: "Quiz"),
    Tab(text: "Materials"),
  ];

  @override
  State<PlaylistScreen> createState() => _PlaylistScreenState();
}

class _PlaylistScreenState extends State<PlaylistScreen> {
  final YoutubeRepo _youtubeRepo = YoutubeRepo();

  YoutubeItem? _selectedVideo;
  YoutubePlayerController? _youtubeController;
  List<YoutubeItem> _playableVideos = [];
  bool _loading = true;
  String? _errorMessage;

  @override
  void dispose() {
    _youtubeController?.dispose();
    super.dispose();
  }

  void _playVideo(YoutubeItem video) {
    final videoId = video.resourceId?.videoId;
    if (videoId == null) return;

    if (_youtubeController == null) {
      _youtubeController = YoutubePlayerController(
        initialVideoId: videoId,
        flags: const YoutubePlayerFlags(autoPlay: true),
      );
    } else {
      _youtubeController!.load(videoId);
    }

    setState(() {
      _selectedVideo = video;
    });
  }

  @override
  void initState() {
    super.initState();
    _loadPlaylistVideos();
  }

  Future<void> _loadPlaylistVideos() async {
    try {
      final playlist =
          await _youtubeRepo.getPlaylistItems(playlistId: widget.playlistId);

      final videos =
          playlist.items.where((v) => v.resourceId?.videoId != null).toList();

      if (videos.isEmpty) {
        setState(() {
          _errorMessage = "No playable videos";
          _loading = false;
        });
        return;
      }

      setState(() {
        _playableVideos = videos;
        _selectedVideo = videos.first;

        _youtubeController = YoutubePlayerController(
          initialVideoId: _selectedVideo!.resourceId!.videoId,
          flags: const YoutubePlayerFlags(autoPlay: true),
        );

        _loading = false;
      });
    } catch (e) {
      setState(() {
        _errorMessage = "Failed to load videos";
        _loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: PlaylistScreen.playlistTabs.length,
      child: Scaffold(
        backgroundColor: AppColors.appBackgroundColor,
        appBar: MyAppBar(title: widget.playlistTitle),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            children: [
              25.height,

              if (_loading)
                const SizedBox(
                  height: 232,
                  child: Center(child: CircularProgressIndicator(
                    color: AppColors.primaryColor,
                  )),
                )
              else if (_errorMessage != null)
                SizedBox(
                  height: 232,
                  child: Center(child: Bodytext(text: _errorMessage!)),
                )
              else
                Column(
                  children: [
                    YoutubePlayer(
                      controller: _youtubeController!,
                      showVideoProgressIndicator: true,
                      onReady: () => _youtubeController!.play(),
                    ),
                    Container(
                      width: double.infinity,
                      color: Colors.black.withOpacity(0.7),
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Heading3(
                            title: _selectedVideo!.snippet.title,
                            titleColor: AppColors.whiteColor,
                          ),
                          5.height,
                          Bodytext(
                            text: _selectedVideo!.snippet.channelTitle,
                            textColor: AppColors.whiteColor,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

              20.height,

              const TabBar(
                tabs: PlaylistScreen.playlistTabs,
                indicatorColor: AppColors.blueColor,
                unselectedLabelColor: AppColors.blackColor,
                labelColor: AppColors.blueColor,
              ),

              Expanded(
                child: TabBarView(
                  children: [
                    if (_loading)
                      const Center(child: CircularProgressIndicator(
                        color: AppColors.primaryColor,
                      ))
                    else if (_errorMessage != null)
                      Center(child: Bodytext(text: _errorMessage!))
                    else
                      ListView.builder(
                        itemCount: _playableVideos.length,
                        itemBuilder: (context, index) {
                          final video = _playableVideos[index];
                          return ListTile(
                            leading: ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.network(
                                video.snippet.thumbnails.medium.url,
                              ),
                            ),
                            title: Heading3(title: video.snippet.title, titleColor: AppColors.blackColor,),
                            subtitle: Bodytext(text: video.snippet.channelTitle,
                            textColor: AppColors.primaryColor,
                            ),
                            onTap: () => _playVideo(video),
                          );
                        },
                      ),
                    const Center(child: Heading3(title: "Notes not available yet...!",
                    titleColor: AppColors.primaryColor,
                    )),
                    const Center(child: Heading3(title: "Quiz not available yet...!",
                    titleColor: AppColors.primaryColor,
                    )),
                    const Center(child: Heading3(title: "Materials not available yet...!",
                    titleColor: AppColors.primaryColor,
                    )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




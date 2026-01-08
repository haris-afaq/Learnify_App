import 'package:flutter/material.dart';
import 'package:learnify_app/config/Components/app_bar.dart';
import 'package:learnify_app/config/Components/loading.dart';
import 'package:learnify_app/config/Components/text_styles/body_text.dart';
import 'package:learnify_app/config/Components/text_styles/heading2.dart';
import 'package:learnify_app/config/constants/colors.dart';
import 'package:learnify_app/config/extenssions/sizedBox.dart';
import 'package:learnify_app/models/youtube_playlist_model.dart';
import 'package:learnify_app/repositories/youtube_repository/youtube_repo.dart';
import 'package:learnify_app/views/home_screen/widgets/courses_tile.dart';

class ExploreScreen extends StatefulWidget {
  static const List<Tab> categoriesList = <Tab>[
    Tab(text: 'All'),
    Tab(text: 'Programming'),
    Tab(text: 'Designing'),
  ];

  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  final YoutubeRepo _youtubeRepo = YoutubeRepo();
  final TextEditingController searchController = TextEditingController();

  String _searchQuery = '';

  final List<String> _allDefaultPlaylists = const [
    "PLFyjjoCMAPtxq8V9fuVmgsYKLNIKqSEV4", 
    "PLW-zSkCnZ-gCq0DjkzY-YapCBEk0lA6lR",
    "PLRAV69dS1uWSjBBJ-egNNOd4mdblt1P4c", 
    "PL4cUxeGkcC9jx2TTZk3IGWKSbtugYdrlu", 
    "PLW-zSkCnZ-gA5Jn6gZtUa6-aG0OoRZyb6",
    "PLu0W_9lII9agwh1XjRt242xIpHhPT2llg",
    "PLjiHFwhbHYlEmPhn68XdG2p2k4X47XR-8",
    "PLOIq79MWqv85s7lYuRPCqHvqBFIGOdPsV",
  ];
    final List<String> _programmingPlaylists = const [
    "PLFyjjoCMAPtxq8V9fuVmgsYKLNIKqSEV4", 
    "PLRAV69dS1uWSjBBJ-egNNOd4mdblt1P4c", 
    "PL4cUxeGkcC9jx2TTZk3IGWKSbtugYdrlu", 
    "PLu0W_9lII9agwh1XjRt242xIpHhPT2llg",
  ];
    final List<String> _designingPlaylists = const [
    "PLW-zSkCnZ-gCq0DjkzY-YapCBEk0lA6lR",
    "PLW-zSkCnZ-gCq0DjkzY-YapCBEk0lA6lR",
    "PLjiHFwhbHYlEmPhn68XdG2p2k4X47XR-8",
    "PLOIq79MWqv85s7lYuRPCqHvqBFIGOdPsV",
  ];

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: ExploreScreen.categoriesList.length,
      child: Scaffold(
        backgroundColor: AppColors.appBackgroundColor,
        appBar: MyAppBar(
          title: "Featured Courses",
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 24, left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: searchController,
                onChanged: (value) {
                  setState(() {
                    _searchQuery = value.trim();
                  });
                },
                decoration: InputDecoration(
                  label: const Text("Search here..."),
                  labelStyle:
                      TextStyle(color: AppColors.grayColor, fontSize: 13),
                  fillColor: AppColors.whiteColor,
                  filled: true,
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.grayColor),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.grayColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.grayColor),
                  ),
                ),
              ),

              20.height,

              Heading2(
                title: "Categories",
                titleColor: AppColors.blackColor,
              ),

              12.height,

          
              const TabBar(
                tabs: ExploreScreen.categoriesList,
                indicatorColor: AppColors.blueColor,
                labelColor: AppColors.blueColor,
                unselectedLabelColor: AppColors.blackColor,
              ),

              20.height,

        
              Expanded(
                child: TabBarView(
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (_searchQuery.isNotEmpty)
                            FutureBuilder<YoutubePlaylistModel>(
                              future: _youtubeRepo.searchPlaylists(
                                query: _searchQuery,
                              ),
                              builder: (context, snapshot) {
                                if (snapshot.connectionState ==
                                    ConnectionState.waiting) {
                                  return const Center(
                                      child: CircularProgressIndicator());
                                }

                                if (snapshot.hasError) {
                                  return const Text(
                                      "Failed to search playlists");
                                }

                                if (!snapshot.hasData ||
                                    snapshot.data!.items.isEmpty) {
                                  return const Text("No playlists found");
                                }

                                return Column(
                                  children: snapshot.data!.items.map((item) {
                                    return Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 10),
                                      child: CoursesTile(
                                        imagePath: item
                                            .snippet.thumbnails.medium.url,
                                        courseTitle: item.snippet.title,
                                        courseDescription:
                                            item.snippet.channelTitle,
                                      ),
                                    );
                                  }).toList(),
                                );
                              },
                            )

                          else
                            Column(
                              children: _allDefaultPlaylists.map((playlistId) {
                                return Padding(
                                  padding:
                                      const EdgeInsets.only(bottom: 10),
                                  child: _buildDefaultPlaylistTile(
                                      playlistId),
                                );
                              }).toList(),
                            ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (_searchQuery.isNotEmpty)
                            FutureBuilder<YoutubePlaylistModel>(
                              future: _youtubeRepo.searchPlaylists(
                                query: _searchQuery,
                              ),
                              builder: (context, snapshot) {
                                if (snapshot.connectionState ==
                                    ConnectionState.waiting) {
                                  return const Center(
                                      child: CircularProgressIndicator());
                                }

                                if (snapshot.hasError) {
                                  return const Text(
                                      "Failed to search playlists");
                                }

                                if (!snapshot.hasData ||
                                    snapshot.data!.items.isEmpty) {
                                  return const Text("No playlists found");
                                }

                                return Column(
                                  children: snapshot.data!.items.map((item) {
                                    return Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 10),
                                      child: CoursesTile(
                                        imagePath: item
                                            .snippet.thumbnails.medium.url,
                                        courseTitle: item.snippet.title,
                                        courseDescription:
                                            item.snippet.channelTitle,
                                      ),
                                    );
                                  }).toList(),
                                );
                              },
                            )

                          else
                            Column(
                              children: _programmingPlaylists.map((playlistId) {
                                return Padding(
                                  padding:
                                      const EdgeInsets.only(bottom: 10),
                                  child: _buildDefaultPlaylistTile(
                                      playlistId),
                                );
                              }).toList(),
                            ),
                        ],
                      )),
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (_searchQuery.isNotEmpty)
                            FutureBuilder<YoutubePlaylistModel>(
                              future: _youtubeRepo.searchPlaylists(
                                query: _searchQuery,
                              ),
                              builder: (context, snapshot) {
                                if (snapshot.connectionState ==
                                    ConnectionState.waiting) {
                                  return const Center(
                                      child: CircularProgressIndicator());
                                }

                                if (snapshot.hasError) {
                                  return const Text(
                                      "Failed to search playlists");
                                }

                                if (!snapshot.hasData ||
                                    snapshot.data!.items.isEmpty) {
                                  return const Text("No playlists found");
                                }

                                return Column(
                                  children: snapshot.data!.items.map((item) {
                                    return Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 10),
                                      child: CoursesTile(
                                        imagePath: item
                                            .snippet.thumbnails.medium.url,
                                        courseTitle: item.snippet.title,
                                        courseDescription:
                                            item.snippet.channelTitle,
                                      ),
                                    );
                                  }).toList(),
                                );
                              },
                            )

                          else
                            Column(
                              children: _designingPlaylists.map((playlistId) {
                                return Padding(
                                  padding:
                                      const EdgeInsets.only(bottom: 10),
                                  child: _buildDefaultPlaylistTile(
                                      playlistId),
                                );
                              }).toList(),
                            ),
                        ],
                      ),),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDefaultPlaylistTile(String playlistId) {
    return FutureBuilder<YoutubePlaylistModel>(
      future: _youtubeRepo.getPlaylist(playlistId: playlistId),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: LoadingWidget(loaderColor: AppColors.primaryColor,)
            );
        }

        if (snapshot.hasError) {
         return Center(
          child: Bodytext(text: "Failed to load playlist"),
         );
        }

        if (!snapshot.hasData || snapshot.data!.items.isEmpty) {
          return const Bodytext(text: "No playlist data found");
        }

        final item = snapshot.data!.items.first;

        return CoursesTile(
          imagePath: item.snippet.thumbnails.medium.url,
          courseTitle: item.snippet.title,
          courseDescription: item.snippet.channelTitle,
        );
      },
    );
  }
}

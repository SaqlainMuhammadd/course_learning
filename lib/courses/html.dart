import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:course_learning/courses/htmlmodel.dart';

class htmlPage extends StatefulWidget {
  const htmlPage({Key? key}) : super(key: key);

  @override
  _htmlPageState createState() => _htmlPageState();
}

class _htmlPageState extends State<htmlPage> {
  late YoutubePlayerController _controller;
  int totalVideos = HtmlModel.VideoList.length; // Total number of videos
  int videosWatched = 0; // Number of videos watched
  bool courseCompleted = false;

  @override
  void initState() {
    super.initState();
    // Initialize the YoutubePlayerController
    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(
        HtmlModel.VideoList.first.url!,
      )!,
      flags: YoutubePlayerFlags(
        autoPlay: false,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  double calculateProgress() {
    return (videosWatched / totalVideos) * 100;
  }

  void generateCertificate() {
    // Generate certificate with user's name
    // For demonstration purposes, we'll just print a message
    print('Certificate generated for User');
    setState(() {
      courseCompleted = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'HTML Course',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
              onEnded: (_) {
                setState(() {
                  videosWatched++;
                  if (videosWatched == totalVideos) {
                    generateCertificate();
                  }
                });
              },
            ),
            LinearProgressIndicator(
              value: calculateProgress() / 100,
              backgroundColor: Colors.teal[300],
              valueColor: AlwaysStoppedAnimation<Color>(Colors.teal),
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: HtmlModel.VideoList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Image.asset(
                    HtmlModel.VideoList[index].thumbnail!,
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                  title: Text(
                    HtmlModel.VideoList[index].tittle!,
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                  onTap: () {
                    setState(() {
                      String? videoId = YoutubePlayer.convertUrlToId(
                        HtmlModel.VideoList[index].url!,
                      );
                      _controller.load(videoId!);
                    });
                  },
                );
              },
            ),
            if (courseCompleted)
              ElevatedButton(
                onPressed: () {
                  // Handle viewing the certificate
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Viewing Certificate'),
                    ),
                  );
                },
                child: Text('View Certificate'),
              ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                'Course Progress: ${calculateProgress().toStringAsFixed(2)}%',
              ),
            ),
          );
        },
        child: Icon(Icons.percent),
      ),
    );
  }
}

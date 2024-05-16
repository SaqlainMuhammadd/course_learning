import 'package:course_learning/courses/cssmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class cssPage extends StatefulWidget {
  const cssPage({super.key});

  @override
  State<cssPage> createState() => _cssPageState();
}

class _cssPageState extends State<cssPage> {
  String? url;
  late YoutubePlayerController _controller;
  String? videoId = YoutubePlayer.convertUrlToId(
      "https://www.youtube.com/watch?v=M7cOmiSly3Q");
//
  @override
  void initState() {
    super.initState();
    if (videoId != null) {
      _controller = YoutubePlayerController(
        initialVideoId: videoId!,
        flags: YoutubePlayerFlags(
          autoPlay: false,
        ),
      );
    } else {
      print("video id is null");
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("url of current videl $url");
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'CSS Course',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
            ),
            ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: CssModel.VideoList.length,
                itemBuilder: (ctx, i) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        String? videoId = YoutubePlayer.convertUrlToId(
                            CssModel.VideoList[i].url!);

                        _controller.load(videoId!);
                      });
                    },
                    child: ListTile(
                      contentPadding: EdgeInsets.all(10),
                      leading: Image.asset(
                        CssModel.VideoList[i].thumbnail!,
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                      title: Text(
                        CssModel.VideoList[i].tittle!,
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}

import 'package:course_learning/courses/sqlmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class sqlPage extends StatefulWidget {
  const sqlPage({super.key});

  @override
  State<sqlPage> createState() => _sqlPageState();
}

class _sqlPageState extends State<sqlPage> {
  String? url;
  late YoutubePlayerController _controller;
  String? videoId = YoutubePlayer.convertUrlToId(
      "https://youtu.be/yH1zCq-iaeU?si=N0aOYVaen3OJBs2J");
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
          'HTML Course',
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
                itemCount: SqlModel.VideoList.length,
                itemBuilder: (ctx, i) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        String? videoId = YoutubePlayer.convertUrlToId(
                            SqlModel.VideoList[i].url!);

                        _controller.load(videoId!);
                      });
                    },
                    child: ListTile(
                      contentPadding: EdgeInsets.all(10),
                      leading: Image.asset(
                        SqlModel.VideoList[i].thumbnail!,
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                      title: Text(
                        SqlModel.VideoList[i].tittle!,
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

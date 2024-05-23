import 'package:course_learning/courses/pythonmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class pythonPage extends StatefulWidget {
  const pythonPage({super.key});

  @override
  State<pythonPage> createState() => _pythonPageState();
}

class _pythonPageState extends State<pythonPage> {
  String? url;
  late YoutubePlayerController _controller;
  String? videoId = YoutubePlayer.convertUrlToId(
      "https://youtu.be/t2_Q2BRzeEE?si=zZxapF0Ai38mdhKV");
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
          'Python Course',
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
                itemCount: PythonModel.VideoList.length,
                itemBuilder: (ctx, i) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        String? videoId = YoutubePlayer.convertUrlToId(
                            PythonModel.VideoList[i].url!);

                        _controller.load(videoId!);
                      });
                    },
                    child: ListTile(
                      contentPadding: EdgeInsets.all(10),
                      leading: Image.asset(
                        PythonModel.VideoList[i].thumbnail!,
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                      title: Text(
                        PythonModel.VideoList[i].tittle!,
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

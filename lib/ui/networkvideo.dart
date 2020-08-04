import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

Future<void> initializePlayer;
VideoPlayerController videoPlayerController;

class NetworkVideo extends StatelessWidget {
  build(BuildContext b) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: VideoPlayerScreen(),
    );
  }
}

class VideoPlayerScreen extends StatefulWidget {
  VideoPlayerScreen({Key key}) : super(key: key);

  @override
  VideoPlayerScreenState createState() => VideoPlayerScreenState();
}

class VideoPlayerScreenState extends State<VideoPlayerScreen> {
  build(BuildContext b) {
    return Column(
      children: <Widget>[
        FutureBuilder(
            future: initializePlayer,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Container(child: VideoPlayer(videoPlayerController)),
                );
              } else {
                return AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Container(
                    color: Colors.black,
                  ),
                );
              }
            }),
        Container(
          padding: EdgeInsets.only(bottom: 10),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/video2.jpg'),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(80.0),
              ),
            ),
            Container(
              height: 50,
              child: IconButton(
                icon: Icon(Icons.play_arrow),
                color: Colors.white,
                onPressed: () {
                  setState(() {});
                  videoPlayerController = VideoPlayerController.network(
                      "https://media.istockphoto.com/videos/sunrise-over-a-sandstone-arch-formations-video-id625882314");
                  initializePlayer = videoPlayerController.initialize();
                  videoPlayerController.setVolume(1.0);
                  //videoPlayerController.initialize();
                  videoPlayerController.play();
                  // setup();
                },
              ),
            ),
            Container(
              height: 50,
              child: IconButton(
                icon: Icon(Icons.pause),
                color: Colors.white,
                onPressed: () {
                  videoPlayerController.pause();
                  //videoPlayerController.dispose();
                },
              ),
            ),
          ],
        ),
        Container(
          padding: EdgeInsets.only(bottom: 10),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/video.jpg'),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(80.0),
              ),
            ),
            Container(
              height: 50,
              child: IconButton(
                icon: Icon(Icons.play_arrow),
                color: Colors.white,
                onPressed: () {
                  setState(() {});
                  videoPlayerController = VideoPlayerController.network(
                      "https://player.vimeo.com/external/278144257.sd.mp4?s=26c3dce6f650c1613d68873c4a6d74fc8ce0ec1f&profile_id=164&oauth2_token_id=57447761");
                  initializePlayer = videoPlayerController.initialize();
                  videoPlayerController.setVolume(1.0);
                  //videoPlayerController.initialize();
                  videoPlayerController.play();
                },
              ),
            ),
            Container(
              height: 50,
              child: IconButton(
                icon: Icon(Icons.pause),
                color: Colors.white,
                onPressed: () {
                  videoPlayerController.pause();
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}

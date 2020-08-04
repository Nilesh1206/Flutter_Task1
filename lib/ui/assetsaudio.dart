import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class LocalAudio extends StatelessWidget {
  AudioPlayer advancedPlayer;
  build(BuildContext b) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/image.jpg'),
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
                  onPressed: () async {
                    advancedPlayer =
                        await AudioCache().loop('audio/alanwalker1.mp3');
                  },
                ),
              ),
              Container(
                height: 50,
                child: IconButton(
                  icon: Icon(Icons.pause),
                  color: Colors.white,
                  onPressed: () async {
                    await advancedPlayer.pause();
                  },
                ),
              ),
              Container(
                height: 50,
                child: IconButton(
                  icon: Icon(Icons.stop),
                  color: Colors.white,
                  onPressed: () async {
                    await advancedPlayer.stop();
                  },
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(bottom: 20),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/image1.jpg'),
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
                  onPressed: () async {
                    advancedPlayer =
                        await AudioCache().loop('audio/rockstar.mp3');
                  },
                ),
              ),
              Container(
                height: 50,
                child: IconButton(
                  icon: Icon(Icons.pause),
                  color: Colors.white,
                  onPressed: () async {
                    await advancedPlayer.pause();
                  },
                ),
              ),
              Container(
                height: 50,
                child: IconButton(
                  icon: Icon(Icons.stop),
                  color: Colors.white,
                  onPressed: () async {
                    await advancedPlayer.stop();
                  },
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(20),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 50,
                height: 50,
                color: Colors.blue,
                child: IconButton(icon: Icon(Icons.play_arrow), onPressed: null), 
              ),
          ],
          ),
        ],
      ),
    );
  }
}

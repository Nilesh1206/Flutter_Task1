import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class NetworkAudio extends StatelessWidget {
  AudioPlayer advancedPlayer = AudioPlayer();
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
                    image: AssetImage('assets/images/img1.png'),
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
                    await advancedPlayer.play(
                        'https://luan.xyz/files/audio/ambient_c_motion.mp3');
                    //await advancedPlayer.resume();
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
            padding: EdgeInsets.only(bottom: 10),
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
                    image: AssetImage('assets/images/img1.png'),
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
                    await advancedPlayer.play(
                        'https://luan.xyz/files/audio/nasa_on_a_mission.mp3');
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
        ],
      ),
    );
  }
}

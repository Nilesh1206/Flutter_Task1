import 'ui/assetvideo.dart';
import 'ui/assetsaudio.dart';
import 'ui/networkVideo.dart';
import 'ui/networkaudio.dart';

main (){
  runApp(MediaPlayer());
}






class MediaPlayer extends StatelessWidget {
  build(BuildContext b) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.list),
            actions: <Widget>[Icon(Icons.search),],
            title: Text("Media Player"),
            backgroundColor: Colors.blue,
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.audiotrack),
                  text: "Music",
                ),
                Tab(
                  icon: Icon(Icons.queue_music),
                  text: "Net Audio",
                ),
                Tab(
                  icon: Icon(Icons.videocam),
                  text: "Videos",
                ),
                Tab(
                  icon: Icon(Icons.music_video),
                  text: "Net Video",
                ),
              ],
            ),
          ),
          body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [.1, .9],
                  colors: [Colors.orangeAccent, Colors.cyanAccent]),
            ),
            child: TabBarView(
              children: [
                LocalAudio(),
                NetworkAudio(),
                LocalVideo(),
                NetworkVideo(),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}

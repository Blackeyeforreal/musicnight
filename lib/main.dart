

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';


void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text("HEu i am less flutter"),
      ),
      body:   YTP()
      );

  }
}

class YTP extends StatefulWidget {
  
  @override
  _YTPState createState() => _YTPState();
}

class _YTPState extends State<YTP> {
  @override
  Widget build(BuildContext context) {

  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'Tj7VqE0gQW0', //https://www.youtube.com/watch?v=Tj7VqE0gQW0
    flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: true,
    ),
);
    return YoutubePlayer(
      controller: _controller,
      width: 344,
      showVideoProgressIndicator:  true,
      key: Key("isk"),
      


    
    );
  }
}

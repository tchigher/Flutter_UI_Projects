import 'package:flutter/material.dart';
import 'package:music_app/model/PlayListModel.dart';
import 'package:music_app/model/SongModel.dart';
import 'package:music_app/screens/Home.dart';

class CardSongs extends StatefulWidget {
  final SongModel song;
  final bool click;
  final Color cor;

  const CardSongs({Key key, this.song, this.click, this.cor}) : super(key: key);

  @override
  _CardSongsState createState() => _CardSongsState();
}

class _CardSongsState extends State<CardSongs> {
  bool clicado = false;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(5),
          width: width * 0.18,//70,
          child: ClipOval(
            child: Image.asset(
              widget.song.urlImage,
              height: width * 0.16,//60,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 10),
        AnimatedContainer(
            duration: Duration(milliseconds: 200),
            height: 2,
            width: width * 0.18,//70,
            color:
                widget.cor //clicado == true ? Colors.red : Color(0xff292A3E),
            )
      ],
    );
  }
}

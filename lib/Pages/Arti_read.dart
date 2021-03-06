import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:book_app_chief_suraj/drawer/configration/Controler.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class MyHomePage extends StatefulWidget {
  int index;
  MyHomePage(this.index);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController iconController;

  bool isAnimated = false;
  bool showPlay = true;
  bool shopPause = false;
  AssetsAudioPlayer audioPlayer = AssetsAudioPlayer();
   final ArtiInfo = Get.put(List_Arti());
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    iconController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1000));
    audioPlayer.open(Audio(ArtiInfo.artis[0].music_link),
        autoStart: false, showNotification: true);
    final Duration position = audioPlayer.currentPosition.value;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(child: Image.asset(ArtiInfo.artis[widget.index].imagePath),),
        Card(
          elevation: 7.0,

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      color: const Color(0xffFFF3E2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.white,
                ),
                height: 80,
                width: 80.0,
                child: CircleAvatar(
                  // radius: 16,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage(
                   ArtiInfo .artis[widget.index].imagePath,
                  ),
                ),
              ),
              SizedBox(width: 50,),
              Column(
                children: [
                 Text(
                    ArtiInfo.artis[widget.index].name,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.amber),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        child: Icon(CupertinoIcons.backward_fill),
                        onTap: () {
                          audioPlayer.seekBy(Duration(seconds: -10));
                        },
                      ),
                      GestureDetector(
                        onTap: () {
                          AnimateIcon();
                        },
                        child: AnimatedIcon(
                          icon: AnimatedIcons.play_pause,
                          progress: iconController,
                          size: 50,
                          color: Colors.black,
                        ),
                      ),
                      InkWell(
                        child: Icon(CupertinoIcons.forward_fill),
                        onTap: () {
                          audioPlayer.seekBy(Duration(seconds: 10));
                          audioPlayer.seek(Duration(seconds: 10));
                          audioPlayer.next();
                        },
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  void AnimateIcon() {
    setState(() {
      isAnimated = !isAnimated;

      if (isAnimated) {
        iconController.forward();
        audioPlayer.play();
      } else {
        iconController.reverse();
        audioPlayer.pause();
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    iconController.dispose();
    audioPlayer.dispose();
    super.dispose();
  }
}

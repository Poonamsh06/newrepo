import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import 'drawer/configration/configration.dart';

class AartiPage extends StatelessWidget {
  // const AartiPage({Key? key}) : super(key: key);
  int item_no;
  AartiPage(this.item_no);

  get index => [0, 1, 2, 3, 4];

  // get index => null;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Row(children: [
      Expanded(
        flex: 3,
        child: Container(
          // width: MediaQuery.of(context).size.width * 0.25,
          color: Colors.white,
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: artis.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) => AartiSection(),
                      //     ));
                    },
                    child: Card(
                      elevation: 7.0,

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      color: const Color(0xffFFF3E2),
                      // margin: const EdgeInsets.all(16),
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        child: Expanded(
                          child: Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  color: Colors.white,
                                ),
                                height: 80,
                                width: 80.0,
                                child: CircleAvatar(
                                  // radius: 16,
                                  backgroundColor: Colors.white,
                                  backgroundImage: AssetImage(
                                    artis[index].imagePath,
                                  ),
                                ),
                              ),
                        
                              const SizedBox(
                                width: 25.0,
                              ),
                              // RichText(text: TextSpan())
                              Expanded(
                                child: Text(
                                  artis[index].name,
                                  style: const TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              }),
        ),
      ),

      const VerticalDivider(
        thickness: 0.3,
        color: Colors.black,
      ),
      Expanded(
        flex: 4,
        // width: MediaQuery.of(context).size.width * 0.5,
        child: AartiDetails(item_no),
      ),
      const VerticalDivider(
        thickness: 0.5,
        color: Colors.black,
      ),
      Expanded(
        flex: 3,
        child: Container( child:MyHomePage('lib/assets/assets_music_music1.mp3')

        ) ,
        ),

      // ]),
    ])));
  }
}

class AartiDetails extends StatelessWidget {
  int item_no;
  AartiDetails(this.item_no);
  var style = MarkdownStyleSheet(
    textAlign: WrapAlignment.center,
    h1Align: WrapAlignment.center,
    h1: const TextStyle(color: Colors.orangeAccent, fontSize: 28),
    textScaleFactor: 1.5,
  );
 



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: FutureBuilder(
            future: rootBundle.loadString(artis[item_no].textPath),
            builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
              if (snapshot.hasData) {
                return Markdown(
                  data: snapshot.data!,
                  styleSheet: style,
                );
              }
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            ),


      ),
    );
  }
}
class MyHomePage extends StatefulWidget {
  String link;
  MyHomePage(this.link);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>

    with SingleTickerProviderStateMixin {
  late AnimationController
      iconController; 

  bool isAnimated = false;
  bool showPlay = true;
  bool shopPause = false;
  AssetsAudioPlayer audioPlayer = AssetsAudioPlayer();
  @override
  void initState() {
    
    // TODO: implement initState
    super.initState();

    iconController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1000));
    audioPlayer.open(Audio(widget.link),autoStart: false,showNotification: true);
    final Duration position = audioPlayer.currentPosition.value;
  }
  @override
  Widget build(BuildContext context) {
    return 
        
        SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 10,),
              ListView.builder(
                 shrinkWrap: true,
                itemCount: artis.length,
                itemBuilder: (context, index){
        
               return  Expanded(
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Card(


                       elevation: 7.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),

                            ),
                            color: const Color(0xffFFF3E2),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [

                                 Container(
                                      padding: const EdgeInsets.all(10),
                                      decoration: const BoxDecoration(
                                        borderRadius:
                                            BorderRadius.all(Radius.circular(20)),
                                        color: Colors.white,
                                      ),
                                      height: 80,
                                      width: 80.0,
                                      child: CircleAvatar(
                                        // radius: 16,
                                        backgroundColor: Colors.white,
                                        backgroundImage: AssetImage(
                                          artis[0].imagePath,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 45,),
                                    Column(
                                      children: [
                                                  Text('Shiv arti',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.amber),),


                           Row(
                             children: [
                               InkWell(child: Icon(CupertinoIcons.backward_fill),onTap: (){
                             audioPlayer.seekBy(Duration(seconds: -10));
                           },),
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
                            InkWell(child: Icon(CupertinoIcons.forward_fill),onTap: (){
                              audioPlayer.seekBy(Duration(seconds: 10));
                              audioPlayer.seek(Duration(seconds: 10));
                              audioPlayer.next();
                            },),
                             ],
                           )
                                      ],
                                    )

                          ],
                        ),
                      ),
                    ),
                 ),
               );
                }
              ),
            ],
          ),
        );
       
            
     
        
  }

  void AnimateIcon() {
    setState(() {
      isAnimated = !isAnimated;

     if(isAnimated)
       {
         iconController.forward();
         audioPlayer.play();
       }else{
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



import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextReader extends StatefulWidget {
   // TextReader(var _textPath, {Key? key} ) : textPath = _textPath , super(key: key) ;

  final String textPath='lib/assets/aarti_eng/shiv_aarti.txt';
  @override
  _TextReaderState createState() => _TextReaderState();
}

class _TextReaderState extends State<TextReader> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [SystemUiOverlay.bottom]);
    super.initState();
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(
        SystemUiMode.manual, overlays: [SystemUiOverlay.top, SystemUiOverlay.bottom]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
              padding: const EdgeInsets.all(16.0),
              child: FutureBuilder<String>(
                future: rootBundle.loadString(widget.textPath),
                builder:
                    (BuildContext context, AsyncSnapshot<String> snapshot) {
                  if(snapshot.connectionState == ConnectionState.done)
                  {
                    return Text(snapshot.data ?? "no text to be printed");
                  }
                  else {
                    return const Text("waiting");
                  }
                },
              )),
        ],
      ),
    );
  }
}

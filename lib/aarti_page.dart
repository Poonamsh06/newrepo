import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import 'drawer/configration/configration.dart';

class AartiPage extends StatelessWidget {
  const AartiPage({Key? key}) : super(key: key);

  get index => [0, 1, 2, 3, 4];

  // get index => null;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Row(children: [
      Expanded(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.25,
          color: Colors.white,
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: artis.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AartiSection(),
                          ));
                    },
                    child: Card(
                      elevation: 7.0,

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      color: const Color(0xffFFF3E2),
                      // margin: const EdgeInsets.all(16),
                      child: Container(
                        padding: const EdgeInsets.all(10),
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
                            Text(
                              artis[index].name,
                              style: const TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ],
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
      SizedBox(
        width: MediaQuery.of(context).size.width * 0.5,
        child: AartiDetails(),
      ),
      const VerticalDivider(
        thickness: 0.5,
        color: Colors.black,
      ),
      Container(width: MediaQuery.of(context).size.width * 0.2),

      // ]),
    ])));
  }
}

class AartiDetails extends StatelessWidget {
  var style = MarkdownStyleSheet(
    textAlign: WrapAlignment.center,
    h1Align: WrapAlignment.center,
    h1: const TextStyle(color: Colors.orangeAccent, fontSize: 40),
    textScaleFactor: 1.5,
  );
  AartiDetails({Key? key}) : super(key: key);

  get index => 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: FutureBuilder(
            future: rootBundle.loadString(artis[index].textPath),
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
            }),


      ),
    );
  }
}

class AartiSection extends StatelessWidget {
  AartiSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Row(children: [
      Expanded(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.25,
          color: Colors.white,
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: artis.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 7.0,

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    color: const Color(0xffFFF3E2),
                    // margin: const EdgeInsets.all(16),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AartiDetails(),
                            ));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(10),
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
                            Text(
                              artis[index].name,
                              style: const TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ],
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
      SizedBox(
        width: MediaQuery.of(context).size.width * 0.5,
        child: AartiDetails(),
      ),

      const VerticalDivider(
        thickness: 0.5,
        color: Colors.black,
      ),
      Container(width: MediaQuery.of(context).size.width * 0.2),

      // ]),
    ])));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:http/http.dart' as http;
import 'package:html/parser.dart' show parse, parseFragment;

class HtmlPackage extends StatelessWidget {
  const HtmlPackage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: const Text('HTML Package')),
      body: const HtmlPackageStateful(),
    );
  }
}

class HtmlPackageStateful extends StatefulWidget {
  const HtmlPackageStateful({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => HtmlPackageState();
}

class HtmlPackageState extends State<StatefulWidget> {
  // Future<void> data = readHTML();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // data = readHTML();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FutureBuilder(
        future: readHTML(),
        builder: (context, snapshot) {
          print("Snapshot${snapshot.data.toString()}");
          if (snapshot.hasData) {
            return (SingleChildScrollView(
              child: Html(
                data: snapshot.data.toString(),
                tagsList: Html.tags..addAll(["bird", "flutter"]),
                style: {
                  // add style to the tags in HTML code
                  "h1":
                      Style(backgroundColor: Colors.blue, color: Colors.white),
                  'h5': Style(maxLines: 2, textOverflow: TextOverflow.ellipsis),
                  "h2": Style(color: Colors.orange, fontSize: FontSize(30))
                },
              ),
            ));
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        });
  }
}

Future<String> readHTML() async {
  var response = await http.Client().get(Uri.parse(
      'http://help.websiteos.com/websiteos/example_of_a_simple_html_page.htm'));
  if (response.statusCode == 200) {
    var document = parse(response.body);
    //Adding element in HTML
    document.body?.nodes.insert(1, parseFragment("<h2>Element Added: Testing by Bhavin</h2>"));
    //Removing element from HTML
    document.getElementsByTagName('h1')[0].remove();
    return document.outerHtml;
  }
  return '';
}

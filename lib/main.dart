import 'package:flutter/material.dart';
import 'package:flutter_demo_1/absorbPointer.dart';
import 'package:flutter_demo_1/align.dart';
import 'package:flutter_demo_1/apiCall.dart';
import 'package:flutter_demo_1/appbar.dart';
import 'package:flutter_demo_1/aspectRatio.dart';
import 'package:flutter_demo_1/baseline.dart';
import 'package:flutter_demo_1/button.dart';
import 'package:flutter_demo_1/center.dart';
import 'package:flutter_demo_1/column.dart';
import 'package:flutter_demo_1/completer.dart';
import 'package:flutter_demo_1/container.dart';
import 'package:flutter_demo_1/customScrollview.dart';
import 'package:flutter_demo_1/dismissible.dart';
import 'package:flutter_demo_1/draggable.dart';
import 'package:flutter_demo_1/draggableSheet.dart';
import 'package:flutter_demo_1/draggableTarget.dart';
import 'package:flutter_demo_1/dropdownButton.dart';
import 'package:flutter_demo_1/elevatedButton.dart';
import 'package:flutter_demo_1/expanded.dart';
import 'package:flutter_demo_1/fittedbox.dart';
import 'package:flutter_demo_1/flexible.dart';
import 'package:flutter_demo_1/floatingActionButton.dart';
import 'package:flutter_demo_1/future.dart';
import 'package:flutter_demo_1/futureBuilder.dart';
import 'package:flutter_demo_1/futureOr.dart';
import 'package:flutter_demo_1/gestureDetector.dart';
import 'package:flutter_demo_1/googleMap.dart';
import 'package:flutter_demo_1/gridview.dart';
import 'package:flutter_demo_1/hero.dart';
import 'package:flutter_demo_1/html.dart';
import 'package:flutter_demo_1/icon.dart';
import 'package:flutter_demo_1/iconButton.dart';
import 'package:flutter_demo_1/ignorePointer.dart';
import 'package:flutter_demo_1/inheritedWidget.dart';
import 'package:flutter_demo_1/interactiveViewer.dart';
import 'package:flutter_demo_1/intrinsicHeight.dart';
import 'package:flutter_demo_1/intrinsicWidth.dart';
import 'package:flutter_demo_1/linkedListAndLinkedListEntry.dart';
import 'package:flutter_demo_1/list.dart';
import 'package:flutter_demo_1/location.dart';
import 'package:flutter_demo_1/map.dart';
import 'package:flutter_demo_1/mediaQuery.dart';
import 'package:flutter_demo_1/navigation.dart';
import 'package:flutter_demo_1/nestedScrollview.dart';
import 'package:flutter_demo_1/notificationListener.dart';
import 'package:flutter_demo_1/offstage.dart';
import 'package:flutter_demo_1/outlinedButton.dart';
import 'package:flutter_demo_1/padding.dart';
import 'package:flutter_demo_1/pageview.dart';
import 'package:flutter_demo_1/popupMenuButton.dart';
import 'package:flutter_demo_1/queue.dart';
import 'package:flutter_demo_1/refreshIndicator.dart';
import 'package:flutter_demo_1/reorderableListview.dart';
import 'package:flutter_demo_1/row.dart';
import 'package:flutter_demo_1/scaffold.dart';
import 'package:flutter_demo_1/screenDesign.dart';
import 'package:flutter_demo_1/scrollable.dart';
import 'package:flutter_demo_1/scrollbar.dart';
import 'package:flutter_demo_1/sets.dart';
import 'package:flutter_demo_1/singleChildScrollview.dart';
import 'package:flutter_demo_1/sizebox.dart';
import 'package:flutter_demo_1/stack.dart';
import 'package:flutter_demo_1/stream.dart';
import 'package:flutter_demo_1/streamBuilder.dart';
import 'package:flutter_demo_1/streamControllerAndSubscription.dart';
import 'package:flutter_demo_1/tabbar.dart';
import 'package:flutter_demo_1/text.dart';
import 'package:flutter_demo_1/textButton.dart';
import 'package:flutter_demo_1/textField.dart';
import 'package:flutter_demo_1/theme.dart';
import 'package:flutter_demo_1/timer.dart';
import 'package:flutter_demo_1/transform.dart';
import 'package:flutter_demo_1/urlLauncher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

final List<String> widgetLists = <String>[
  'Text',
  'Row',
  'Column',
  'Stack',
  'Container',
  'Expanded',
  'Flexible',
  'AppBar',
  'Button',
  'Icon',
  'Scaffold',
  'MediaQuery',
  'Padding',
  'Theme',
  'Dropdown Button',
  'Elevated Button',
  'Floating Action Button',
  'Icon Button',
  'Outlined Button',
  'Popup Menu Button',
  'Text Button',
  'Material Button',
  'Custom Scrollview',
  'Draggable Scrollable Sheet',
  'GridView',
  'ListView',
  'NestedScroll View',
  'Notification Listener',
  'PageView',
  'Refresh Indicator',
  'Reorderable ListView',
  'Scrollable',
  'Scrollbar',
  'Single Child Scrollview',
  'TextField',
  'Future Builder',
  'Stream Builder',
  'Absorb Pointer',
  'Dismissible',
  'Draggable',
  'Draggable Target',
  'Gesture Detector',
  'Ignore Pointer',
  'Interactive Viewer',
  'Hero',
  'Navigation',
  'Align',
  'Center',
  'Aspect Ratio',
  'FittedBox',
  'Intrinsic Height',
  'Intrinsic Width',
  'OffStage',
  'SizeBox',
  'Transform',
  'Future Class',
  'Stream Class',
  'Completer Class',
  'FutureOr',
  'Stream Controller and SubScription',
  'Timer',
  'List',
  'Map',
  'Set',
  'LinkedList And LinkedListEntry',
  'Queue',
  'Screen Design',
  'Google Map',
  'API Call',
  'Inherited Widget',
  'BaseLine Widget',
  'Tab Bar Widget',
  'HTML Package',
  'Location Package',
  'URL Launcher'
];

class _MyHomePageState extends State<MyHomePage> {
  GestureDetector itemBuilder(BuildContext context, int index) {
    return GestureDetector(
        onTap: () {
          // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          //   content: Text(widgetLists[index] + " Clicked"),
          // ))
          switch (index) {
            case 0:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const TextWidget()));
              break;
            case 1:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const RowWidget()));
              break;
            case 2:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ColumnWidget()));
              break;
            case 3:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const StackWidget()));
              break;
            case 4:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ContainerWidget()));
              break;
            case 5:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ExpandedWidget()));
              break;
            case 6:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const FlexibleWidget()));
              break;
            case 7:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const AppbarWidget()));
              break;
            case 8:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ButtonWidget()));
              break;
            case 9:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const IconWidget()));
              break;
            case 10:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ScaffoldWidget()));
              break;
            case 11:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MediaQueryWidget()));
              break;
            case 12:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const PaddingWidget()));
              break;
            case 13:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ThemeWidget()));
              break;
            case 14:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const DropDownButtonWidget()));
              break;
            case 15:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ElevatedButtonWidget()));
              break;
            case 16:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const FloatingActionButtonWidget()));
              break;
            case 17:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const IconButtonWidget()));
              break;
            case 18:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const OutlinedButtonWidget()));
              break;
            case 19:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const PopupMenuButtonWidget()));
              break;
            case 20:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const TextButtonWidget()));
              break;
            case 22:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const CustomScrollViewWidget()));
              break;
            case 23:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const DraggableSheetWidget()));
              break;
            case 24:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const GridViewWidget()));
              break;
            case 26:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const NestedScrollViewWidget()));
              break;
            case 27:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const NotificationListenerWidget()));
              break;
            case 28:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const PageViewWidget()));
              break;
            case 29:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const RefreshIndicatorWidget()));
              break;
            case 30:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ReorderableListViewWidget()));
              break;
            case 31:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ScrollableWidget()));
              break;
            case 32:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ScrollbarWidget()));
              break;
            case 33:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SingleChildScrollViewWidget()));
              break;
            case 34:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const TextFieldWidget()));
              break;
            case 35:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const FutureBuilderWidget()));
              break;
            case 36:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const StreamBuilderWidget()));
              break;
            case 37:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const AbsorbPointerWidget()));
              break;
            case 38:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const DismissibleWidget()));
              break;
            case 39:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const DraggableWidget()));
              break;
            case 40:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const DraggableTargetWidget()));
              break;
            case 41:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const GestureDetectorWidget()));
              break;
            case 42:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const IgnorePointerWidget()));
              break;
            case 43:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const InteractiveViewWidget()));
              break;
            case 44:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HeroWidget()));
              break;
            case 45:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const NavigationWidget()));
              break;
            case 46:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const AlignWidget()));
              break;
            case 47:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const CenterWidget()));
              break;
            case 48:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const AspectRatioWidget()));
              break;
            case 49:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const FittedBoxWidget()));
              break;
            case 50:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const IntrinsicHeightWidget()));
              break;
            case 51:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const IntrinsicWidthWidget()));
              break;
            case 52:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const OffstageWidget()));
              break;
            case 53:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SizeBoxWidget()));
              break;
            case 54:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const TransformWidget()));
              break;
            case 55:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const FutureClass()));
              break;
            case 56:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const StreamClass()));
              break;
            case 57:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const CompleterClass()));
              break;
            case 58:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const FutureOrClass()));
              break;
            case 59:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const StreamControllerAndSubscriptionClass()));
              break;
            case 60:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const TimerClass()));
              break;
            case 61:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ListClassExample()));
              break;
            case 62:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MapClassExample()));
              break;
            case 63:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SetsClassExample()));
              break;
            case 64:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const LinkedListAndLinkedListEntry()));
              break;
            case 65:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const QueueClass()));
              break;
            case 66:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ScreenDesign()));
              break;
            case 67:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const GoogleMapExample()));
              break;
            case 68:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const APICallExample()));
              break;
            case 69:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const InheritedWidgetExample()));
              break;
            case 70:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const BaselineWidget()));
              break;
            case 71:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const TabBarWidget()));
              break;
            case 72:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HtmlPackage()));
              break;
            case 73:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const LocationPackage()));
              break;
            case 74:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const UrlLauncherPackage()));
              break;
          }
        },
        child: Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
                height: 50,
                color: Colors.amber[100],
                child: Center(
                    child: Text(
                  widgetLists[index],
                  style: const TextStyle(fontWeight: FontWeight.bold),
                )))));
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: ListView.builder(
              itemBuilder: itemBuilder,
              itemCount: widgetLists
                  .length)), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

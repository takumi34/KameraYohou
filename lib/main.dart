import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:kamera_yohou/spotList.dart';
import 'package:kamera_yohou/currentLocation.dart';
import 'package:kamera_yohou/subjectList.dart';

void main() async {
  await DotEnv().load('.env');
  runApp(MyApp());
  //TODO current locationの例
  CurrentLocation currentLocation = new CurrentLocation();
  currentLocation.getCurrentLocation();
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new SpotList(title: 'Spot List'),
      routes: <String, WidgetBuilder>{
        '/register': (_) => new SubjectList(title: 'Favarites List'),
      },
    );
  }
}

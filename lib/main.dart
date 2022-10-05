import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyAdaptingApp());

class MyAdaptingApp extends StatelessWidget {
  const MyAdaptingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Adaptive Music App',
      theme: ThemeData(primarySwatch: Colors.green),
      darkTheme: ThemeData.dark(),
      builder: (context, child) {
        return CupertinoTheme(
          data: const CupertinoThemeData(),
          child: Material(child: child),
        );
      },
      home: const PlatformAdaptingHomePage(),
    );
  }
}

class PlatformAdaptingHomePage extends StatefulWidget {
  const PlatformAdaptingHomePage({super.key});

  @override
  State<PlatformAdaptingHomePage> createState() =>
      _PlatformAdaptingHomePageState();
}

class _PlatformAdaptingHomePageState extends State<PlatformAdaptingHomePage> {
  final songsTabKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  Widget _buildAndroidHomePage() {
    return Container();
  }
}

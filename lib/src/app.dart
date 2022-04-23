import 'package:flutter/material.dart';
import 'package:flutter_yodzikir/src/ui/dzikir/dzikir_view.dart';
import 'package:flutter_yodzikir/src/utils/constants/constants.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appName,
      theme: AppTheme.light,
      home: const Scaffold(
        resizeToAvoidBottomInset: true,
        body: DzikirView(),
      ),
    );
  }
}

import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:meliorabag/design/customAppBar/navBarDrawer.dart';
import 'package:meliorabag/design/screens/mainscreen/mainscreen.dart';
import 'package:meliorabag/design/screens/test/testscreen.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static final Handler _homeScreen = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) =>
          const MainScreen());
  static final Handler _commingSoonHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) =>
          const TestScreen());

  static final Handler _navBarDrawer = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) =>
          const AppBarNavDrawer());

  static void setupRouter() {
    router.define(
      '/',
      handler: _homeScreen,
    );
    router.define(
      '/main/coomingsoon',
      handler: _commingSoonHandler,
    );
    router.define(
      '/main/list',
      handler: _navBarDrawer,
    );
  }
}

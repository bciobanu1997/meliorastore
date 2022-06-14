/*class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static final Handler _homeScreen = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) =>
          const MainScreen());

  static final Handler _navBarDrawer = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) =>
          const AppBarNavDrawer());

  static final Handler _comingSoonScreen = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) =>
          const ComingSoonMainScreen());

  static void setupRouter() {
    router.define(
      '/',
      handler: _homeScreen,
    );
    router.define(
      '/main/list',
      handler: _navBarDrawer,
    );
    router.define(
      '/main/coming-soon',
      handler: _comingSoonScreen,
    );
  }
}*/

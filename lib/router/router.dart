import 'package:fluro/fluro.dart';
import 'package:vertical_landingpage/router/router_handlers.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static void configureRoutes(){
    // Routes
    router.define(' /:page', handler: homeHandler);

    //404
    router.notFoundHandler = homeHandler;

  }

}
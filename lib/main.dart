import 'package:deeplink/home.dart';
import 'package:deeplink/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
  //DeeplinkManager.instance.configureChannel();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      navigatorKey: NavigationService.navigatorKey,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: HomePage(),
      onGenerateRoute: (settings) {
        if (settings.name != null) {
          var uri = Uri.parse(settings.name!);
          uri.queryParameters.forEach((key, value) {
            kdPrint("Key: $key\tValue: $value");
          });
          if (settings.name! == "/") {
            return MaterialPageRoute(builder: (_) => HomePage());
          } else if (settings.name! == "/settings") {
            return MaterialPageRoute(builder: (_) => SettingsPage());
          } else {
            return null;
          }
        } else {
          kdPrint("Route name is null");
        }
      },
      restorationScopeId: "nst-saas-root",
    );
  }
}

class NavigationService {
  NavigationService._();
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
}

class DeeplinkManager {

  static const channelName = 'com.nst.dltest.deeplink/deeplinkmanager';
  late MethodChannel methodChannel;

  static final DeeplinkManager instance = DeeplinkManager._init();

  DeeplinkManager._init();

  void configureChannel() {
    methodChannel = const MethodChannel(channelName);
    methodChannel.setMethodCallHandler(methodHandler); // set method handler
  }

  Future<void> methodHandler(MethodCall call) async {
    switch (call.method) {
      case "handleDeeplinkData":
        try {
          NavigationService
              .navigatorKey
              .currentState!.pushNamed(Routes.settings,);
        } catch (e) {
          print("Exception: DeeplinkManager > methodHandler: ${e.toString()}");
        }
        break;
      default:
        print("Error: No method handler for: ${call.method}");
    }
  }

}

class Routes {
  Routes._();

  //static variables
  static const String home = '/home';
  static const String settings = '/settings';

  static final routes = <String, WidgetBuilder> {
    home: (BuildContext context) => const HomePage(),
    settings: (BuildContext context) => const SettingsPage(),
  };

}

void kdPrint(String value) {
  debugPrint("\n======================================== $value ========================================\n");
}
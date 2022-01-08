import 'package:flutter/material.dart';
import 'package:flutter_template/home.dart';
import 'package:flutter_template/utilities/dependency_resolver.dart';
import 'package:flutter_template/utilities/theme.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'core/utilities/dependency_resolver.dart';
import 'environments/api.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // For SharedPreferences
  await GetStorage.init(); // For GetStorage
  DevelopmentMode(); // For SSL Configuration. Don't Use Production Mode

  // Dependency Resolvers
  CoreModule.load();
  CustomModule.load();

  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "ArtChitecture FlutterUI",
      theme: lightTheme(context),
      darkTheme: darkTheme(context),
      themeMode: ThemeMode.system,
      home: Home(),
    );
  }
}

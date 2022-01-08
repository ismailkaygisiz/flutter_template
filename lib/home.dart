import 'package:flutter/material.dart';
import 'package:flutter_template/core/utilities/responsive.dart';

import 'core/utilities/current_platform.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();

    print("Platform Name : ${CurrentPlatform.getPlatform()}");
    print("Platform Locale Name : ${CurrentPlatform.getLocaleName()}");
    print("Android : ${CurrentPlatform.isAndroid()}");
    print("IOS : ${CurrentPlatform.isIOS()}");
    print("Windows : ${CurrentPlatform.isWindows()}");
    print("MacOs : ${CurrentPlatform.isMacOS()}");
    print("Linux : ${CurrentPlatform.isLinux()}");
    print("Fuchsia : ${CurrentPlatform.isFuchsia()}");
    print("Web : ${CurrentPlatform.isWeb()}");
  }

  @override
  Widget build(BuildContext context) {
    print("Screen Width : ${Responsive.getDeviceSize(context).width}");
    print("Screen Height : ${Responsive.getDeviceSize(context).height}");

    // print("Desktop : ${Responsive.isDesktop(context)}");
    // print("Tablet : ${Responsive.isTablet(context)}");
    // print("MobileLarge : ${Responsive.isMobileLarge(context)}");
    // print("Mobile : ${Responsive.isMobile(context)}");

    /// "return translates != null ? YourCustomHomeScreen() : YourCustomLoadingScreen();"
    /// If you don't want to use translates you can use "return YourCustomHomePageScreen();" or "return Scaffold();"
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [],
        ),
      ),
    );
  }
}

import 'package:architecture/app/pages/home/home_page.dart';
import 'package:flutter/material.dart';

import 'app_controller.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: AppController.instance.changeThemeViewModel.config.themeSwitch,
      builder: (context, isDark, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.comfortable,
            brightness:isDark ? Brightness.dark : Brightness.light,
          ),
          home: HomePage(),
        );
      },
    );
  }
}

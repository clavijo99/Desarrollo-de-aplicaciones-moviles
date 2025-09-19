

import 'package:flutter/material.dart';
import 'package:navegacion/pages/splash.dart';

Map<String, WidgetBuilder> mainRoutes(BuildContext context) => {
  '/login': (context) => SplashScreen(),
};
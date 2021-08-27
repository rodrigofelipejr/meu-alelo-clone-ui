import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'src/app_widget.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
    (_) => runApp(AppWidget()),
  );
}

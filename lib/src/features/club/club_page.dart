import 'dart:io';

import 'package:alelo/src/shared/helpers/helpers.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../shared/widgets/widgets.dart';

class ClubPage extends StatefulWidget {
  const ClubPage({Key? key}) : super(key: key);

  @override
  _ClubPageState createState() => _ClubPageState();
}

class _ClubPageState extends State<ClubPage> {
  bool _isLoading = true;

  Future<void> init() async {
    await Future.delayed(Duration(seconds: 3));
    _isLoading = false;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      init();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'Clube Alelo',
      ),
      body: LayoutBuilder(
        builder: (context, snapshot) {
          if (_isLoading) return LoadingWidget();

          return Column(
            children: [
              Expanded(
                child: WebView(
                  initialUrl: 'https://www.alelo.com.br/meucartao/clubealelo',
                  // javascriptMode: JavascriptMode.unrestricted,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

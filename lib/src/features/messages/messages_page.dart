import 'package:flutter/material.dart';

import '../../shared/resources/resources.dart';
import '../../shared/widgets/widgets.dart';
import 'widgets/widgets.dart';

class MessagesPage extends StatefulWidget {
  const MessagesPage({Key? key}) : super(key: key);

  @override
  _MessagesPageState createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> {
  bool _isLoading = true;

  Future<void> init() async {
    await Future.delayed(Duration(seconds: 3));
    _isLoading = false;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      init();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(title: 'Mensagens'),
      backgroundColor: AppColors.grayLight,
      body: Center(
        child: SingleChildScrollView(
          child: LayoutBuilder(
            builder: (context, snapshot) {
              switch (_isLoading) {
                case true:
                  return LoadingWidget();

                default:
                  return EmptyMessageWidget();
              }
            },
          ),
        ),
      ),
    );
  }
}

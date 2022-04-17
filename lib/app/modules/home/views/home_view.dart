import 'package:flutter/material.dart';
import 'package:movies_land/app/shared/header_bar.dart';

import '../../../config/messages/app_message.dart';
import '../../../shared/floating_button.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          HeaderBar(title: AppMessage.appTitle),
        ],
      ),
      floatingActionButton: FloatingButton(
        icon: Icons.search,
        onPress: () async {},
      ),
    );
  }
}

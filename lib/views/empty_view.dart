import 'package:custom_widgets/widgets/hero_banner.dart';
import 'package:flutter/material.dart';

class EmptyView extends StatelessWidget {
  const EmptyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: .center,
        children: [
          HeroBanner(
            imageAsset: 'assets/images/Image.png',
            caption:
                'منظومة التأمين والملف الصحي الرقمي المعتمد',
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

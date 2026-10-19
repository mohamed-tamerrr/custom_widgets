import 'package:custom_widgets/widgets/egy_flag.dart';

import 'package:flutter/material.dart';

class EmptyView extends StatelessWidget {
  const EmptyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [EgyptFlag()],
        ),
      ),
    );
  }
}



import 'package:flutter/material.dart';
import 'package:testabd/core/utils/app_assets.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          spacing: 24,
          mainAxisSize: MainAxisSize.max,
          children: [
            const SizedBox(height: 40),

            /// LOGO
            SizedBox(
              height: 120,
              width: 120,
              child: Image.asset(AppImages.logo),
            ),

            const SizedBox(height: 24),

            Text.rich(
              TextSpan(
                text: "Xush kelibsiz\n",
                style: Theme.of(context).textTheme.titleSmall,
                children: [
                  TextSpan(
                    text: "TestAbd hisobingizga kirish",
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

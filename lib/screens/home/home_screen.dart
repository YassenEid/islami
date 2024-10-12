import 'package:flutter/material.dart';
import 'package:task2/screens/tabs/android_tab.dart';
import 'package:task2/screens/tabs/ios_tab.dart';
import 'package:task2/screens/tabs/full_stack_tab.dart';
import 'package:task2/utils/default.dart';
import 'package:task2/widget/app_assets.dart';
import 'package:task2/widget/data.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "home";

  HomeScreen({super.key});

  final List<Data>content=[
    Data(imagePath:AppAssets.android ),
    Data(imagePath:AppAssets.os ),
    Data(imagePath:AppAssets.fullStack ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'RouteAppOne',
        ),
      ),
      body:   Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            DefaultCard(path:
            content[0].imagePath
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AndroidScreen.routeName,arguments: Data(imagePath:
                    content[0].imagePath
                    ));
                  },
                  child: const Text(
                    'ANDROID COURSE',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            DefaultCard(path:
            content[1].imagePath
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context,IosScreen.routeName,arguments: Data(imagePath:
                    content[1].imagePath
                    ));
                  },
                  child: const Text(
                    'IOS COURSE',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            DefaultCard(path:
            content[2].imagePath
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, FullStackScreen.routeName,arguments: Data(imagePath:
                    content[2].imagePath
                    ));
                  },
                  child: const Text(
                    'FULL STACK',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task2/utils/default.dart';
import 'package:task2/widget/app_assets.dart';
import 'package:task2/widget/data.dart';

class FullStackScreen extends StatefulWidget {
  static const String routeName='full_stack';
  const FullStackScreen({super.key});

  @override
  State<FullStackScreen> createState() => _FullStackScreenState();
}

class _FullStackScreenState extends State<FullStackScreen> {
  String androidContent='';
  String fileContent='1.txt';


  @override
  Widget build(BuildContext context) {
    Data arg = ModalRoute.of(context)!.settings.arguments as Data;
    readFileContent(fileContent);
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
                AppAssets.backGround
            ),
            fit: BoxFit.cover
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text(
            'RouteAppOne',
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              DefaultCard(path:
              arg.imagePath
              ),
              const  SizedBox(
                height: 10.0,
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder:(context, index) =>  Text(
                    androidContent,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20
                    ),
                  ),
                  itemCount: 1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  readFileContent(String fileName)async
  {
    androidContent = await rootBundle.loadString('assets/files/$fileName');
    setState(() {

    });
  }
}

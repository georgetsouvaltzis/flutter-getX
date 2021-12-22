import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Controller.dart';

void main() {
  runApp(const HomeworkApp());
}

class HomeworkApp extends StatelessWidget {
  const HomeworkApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animals',
      home: MainScreen()
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Controller c = Get.put(Controller());

    return Scaffold(
      appBar: AppBar(title: Text("Animals"),centerTitle: true),
      body: Center(
          child:
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() => Image.asset(c.imageUrl.value,width: 100,height: 100)),
              Obx(() => Text("${c.name}", style: TextStyle(fontSize: 30))),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FloatingActionButton(
                      child: Icon(Icons.refresh),
                      onPressed: ()
                      {
                        //c.imageUrl =  "assets/falcon.png";
                        c.changename("falcon");
                        c.changeUrl("assets/falcon.png");
                      }),
                  FloatingActionButton(
                      child: Icon(Icons.refresh),
                      onPressed: () {
                          c.changeUrl("assets/parrot.png");
                        c.changename("parrot");
                      }),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FloatingActionButton(
                      child: Icon(Icons.refresh),
                      onPressed: () {
                          c.changeUrl("assets/cat.png");
                        c.changename("cat");
                      }),
                  FloatingActionButton(
                      child: Icon(Icons.refresh),
                      onPressed: () {
                          c.changeUrl("assets/bunny.png");
                        c.changename("bunny");
                      })
                ],
              )
            ],
          )
      ),
    );
  }
}


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _imageUrl = "assets/bunny.png";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Animals"),centerTitle: true),
      body: Center(
        child:
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(_imageUrl,width: 100,height: 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 FloatingActionButton(
                     child: Icon(Icons.refresh),
                     onPressed: ()
                     {
                       setState(() {
                           _imageUrl = "assets/falcon.png";
                       });
                     }),
                 FloatingActionButton(
                     child: Icon(Icons.refresh),
                     onPressed: () {
                      setState(() {
                        _imageUrl = "assets/parrot.png";
                      });
                     }),
               ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FloatingActionButton(
                    child: Icon(Icons.refresh),
                    onPressed: () {
                      setState(() {
                        _imageUrl = "assets/cat.png";
                      });
                    }),
                  FloatingActionButton(
                    child: Icon(Icons.refresh),
                    onPressed: () {
                      setState(() {
                        _imageUrl = "assets/bunny.png";
                      });
                    })
                ],
              )
            ],
          )
      ),
    );
  }
}




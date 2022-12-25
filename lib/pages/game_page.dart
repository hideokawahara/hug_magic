import 'package:flutter/material.dart';

class GamePage extends StatelessWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.teal,
      body: GamePageBody(),
    );
  }
}

class GamePageBody extends StatefulWidget {
  const GamePageBody({Key? key}) : super(key: key);

  @override
  State<GamePageBody> createState() => _GamePageBodyState();
}

class _GamePageBodyState extends State<GamePageBody> {
  bool scriptLineExist = true;

  List<String> scriptLineList = [
    'こんにちは',
    '今日って何時でしたっけ？',
    'ありがとうございます！',
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        characterWidget(),
        scripLineWidget(),
      ],
    );
  }

  Widget scripLineWidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 8,
          ),
          margin: const EdgeInsets.only(
            left: 16,
          ),
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.7),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: const Text(
            'Name',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        Container(
          height: 240,
          width: double.infinity,
          margin: const EdgeInsets.only(
            left: 16,
            right: 16,
            bottom: 80,
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 16,
          ),
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.7),
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(25),
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ),
            border: Border.all(
              color: Colors.white,
              width: 4,
            ),
          ),
          child: Stack(
            children: [
              Text(
                scriptLineList[currentIndex],
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                ),
              ),
              if (scriptLineExist)
                Align(
                  alignment: Alignment.bottomRight,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        if (scriptLineList.length - 1 == currentIndex) {
                          scriptLineExist = false;
                          return;
                        }
                        currentIndex++;
                        if (scriptLineList.length - 1 == currentIndex) {
                          scriptLineExist = false;
                        }
                      });
                    },
                    child: const Icon(
                      Icons.forward_outlined,
                      color: Colors.white,
                      size: 48,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }

  Widget characterWidget() {
    return Column(
      children: [
        Container(
          width: 200,
          height: 200,
          decoration: const BoxDecoration(
            color: Colors.blue,
            shape: BoxShape.circle,
          ),
          child: const FittedBox(
            fit: BoxFit.cover,
            child: Icon(
              Icons.face_retouching_natural,
            ),
          ),
        ),
        Container(
          height: 200,
          width: 100,
          color: Colors.blue,
        ),
      ],
    );
  }
}

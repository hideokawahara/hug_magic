import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class TogglePage extends StatelessWidget {
  const TogglePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Toggler'),
      ),
      body: const TogglePageBody(),
    );
  }
}

class TogglePageBody extends StatefulWidget {
  const TogglePageBody({Key? key}) : super(key: key);

  @override
  State<TogglePageBody> createState() => _TogglePageBodyState();
}

class _TogglePageBodyState extends State<TogglePageBody> {
  bool isOn = false;
  TapFeedBack isSelect = TapFeedBack.weak;

  @override
  Widget build(BuildContext context) {
    List<Widget> buttonList = TapFeedBack.values.map((select) {
      final String buttonTitle;
      switch (select) {
        case TapFeedBack.weak:
          buttonTitle = '弱';
          break;
        case TapFeedBack.medium:
          buttonTitle = '中';
          break;
        case TapFeedBack.strong:
          buttonTitle = '強';
          break;
        case TapFeedBack.vibe:
          buttonTitle = '震';
          break;
      }
      return FloatingActionButton(
        heroTag: buttonTitle,
        backgroundColor: isSelect == select ? Colors.grey : null,
        child: Text(buttonTitle),
        onPressed: () {
          setState(() {
            isSelect = select;
          });
        },
      );
    }).toList();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: SizedBox(
            height: 200,
            width: 200,
            child: FittedBox(
              fit: BoxFit.contain,
              child: CupertinoSwitch(
                value: isOn,
                onChanged: (bool value) async {
                  await tapFeedBackAction(isSelect);
                  setState(() {
                    isOn = value;
                  });
                },
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 56,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: buttonList,
        ),
      ],
    );
  }

  Future<void> tapFeedBackAction(TapFeedBack selectFeedback) async {
    switch (selectFeedback) {
      case TapFeedBack.weak:
        await HapticFeedback.selectionClick();
        break;
      case TapFeedBack.medium:
        await HapticFeedback.lightImpact();
        break;
      case TapFeedBack.strong:
        await HapticFeedback.heavyImpact();
        break;
      case TapFeedBack.vibe:
        await HapticFeedback.vibrate();
        break;
    }
  }
}

enum TapFeedBack {
  weak,
  medium,
  strong,
  vibe,
}

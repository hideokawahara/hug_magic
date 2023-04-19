//Packages
import 'package:flutter/material.dart';

class TerminalPage extends StatelessWidget {
  const TerminalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ターミナル'),
      ),
      body: const TerminalPageBody(),
    );
  }
}

class TerminalPageBody extends StatefulWidget {
  const TerminalPageBody({Key? key}) : super(key: key);

  @override
  State<TerminalPageBody> createState() => _TerminalPageBodyState();
}

class _TerminalPageBodyState extends State<TerminalPageBody> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextFormField(
            controller: controller,
            maxLines: 10,
            keyboardType: TextInputType.multiline,
            decoration: const InputDecoration(border: OutlineInputBorder()),
          ),
        ),
        ElevatedButton(
            onPressed: () {
              print(controller.text);
              runDartCode(controller.text);
            },
            child: const Text('Run')),
      ],
    );
  }

  void runDartCode(String rawValue) {
    final List<String> formatList =
        rawValue.split('\n').map((String text) => text.trim()).toList()
          ..removeWhere(
            (String splitText) => splitText.isEmpty,
          );
    // print(formatList);
    final Map<String, dynamic> variableMap = {};
    for (String formatItem in formatList) {
      if (formatItem.contains('var')) {
        final String variable =
            formatItem.replaceFirst('var', '').replaceFirst(';', '').trim();
        // print(variable);
        //Todo: 確認文を追加する。
        final List<dynamic> variableList =
            variable.split('=').map((String text) {
          var parseValue = int.tryParse(text.trim());
          if (parseValue != null) {
            return parseValue;
          } else {
            return text;
          }
        }).toList();
        // print(variableList);
        variableMap[variableList[0]] = variableList[1];
        print(variableMap);
        print(variableMap[variableList[0]] is int);
      }
    }
  }
}

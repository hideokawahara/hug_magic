import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

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

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CupertinoSwitch(
        value: isOn,
        onChanged: (bool value) {
          setState(() {
            isOn = value;
          });
        },
      ),
    );
  }
}

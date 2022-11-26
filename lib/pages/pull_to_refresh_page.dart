import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PullToRefreshPage extends StatefulWidget {
  const PullToRefreshPage({Key? key}) : super(key: key);

  @override
  State<PullToRefreshPage> createState() => _PullToRefreshPageState();
}

class _PullToRefreshPageState extends State<PullToRefreshPage> {
  int seconds = 2;
  final List<int> _items = [1, 2, 3, 4, 5];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Puller'),
      ),
      endDrawer: Drawer(
        child: settingList(context),
      ),
      body: PullToRefreshPageBody(
        seconds: seconds,
      ),
    );
  }

  Widget settingList(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text('秒数'),
              InkWell(
                onTap: () {
                  _showModalPicker(context);
                },
                child: Text('$seconds秒'),
              ),
            ],
          )
        ],
      ),
    );
  }

  void _showModalPicker(BuildContext rootContext) {
    showModalBottomSheet(
      context: rootContext,
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height / 3,
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: CupertinoPicker(
              itemExtent: 40,
              onSelectedItemChanged: _onSelectedItemChanged,
              children: _items.map((item) => _pickerItem(item)).toList(),
            ),
          ),
        );
      },
    );
  }

  Widget _pickerItem(int second) {
    return Text('$second秒');
  }

  void _onSelectedItemChanged(int index) {
    setState(() {
      seconds = _items[index];
    });
  }
}

class PullToRefreshPageBody extends StatefulWidget {
  const PullToRefreshPageBody({
    Key? key,
    required this.seconds,
  }) : super(key: key);
  final int seconds;

  @override
  State<PullToRefreshPageBody> createState() => _PullToRefreshPageBodyState();
}

class _PullToRefreshPageBodyState extends State<PullToRefreshPageBody> {
  int itemCount = 10;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        setState(() {
          itemCount = 0;
        });
        await Future.delayed(
          Duration(
            seconds: widget.seconds,
          ),
        );
        setState(() {
          itemCount = 10;
        });
      },
      child: ListView.builder(
        itemCount: itemCount,
        itemBuilder: (BuildContext listContext, int index) {
          return Container(
            margin: const EdgeInsets.only(
              bottom: 16,
              left: 16,
              right: 16,
            ),
            height: 200,
            width: 200,
            color: Theme.of(context).backgroundColor,
          );
        },
      ),
    );
  }
}

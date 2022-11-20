import 'package:flutter/material.dart';

class PullToRefreshPage extends StatelessWidget {
  const PullToRefreshPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Puller'),
      ),
      body: const PullToRefreshPageBody(),
    );
  }
}

class PullToRefreshPageBody extends StatefulWidget {
  const PullToRefreshPageBody({Key? key}) : super(key: key);

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
          const Duration(
            seconds: 2,
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

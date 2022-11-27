//Packages
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//ViewModels
import 'package:hug_magic/view_models/main_riverpod.dart';

class ListPage extends StatelessWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hug Magic'),
      ),
      body: ListPageBody(),
    );
  }
}

class ListPageBody extends ConsumerWidget {
  ListPageBody({Key? key}) : super(key: key);

  final contentNotifierProvider =
      StateNotifierProvider<ContentsNotifier, List<Map<String, dynamic>>>(
    (ref) => ContentsNotifier(),
  );
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<Map<String, dynamic>> list = ref.watch(contentNotifierProvider);
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (BuildContext context, int index) {
        Map<String, dynamic> content = list[index];
        String? title;
        Widget? page;
        Icon? icon;
        if (content.containsKey('name')) {
          title = content['name'];
        }
        if (content.containsKey('page')) {
          page = content['page'];
        }
        if (content.containsKey('icon')) {
          icon = content['icon'];
        }
        return ListTile(
          leading: icon,
          title: Text(
            title ?? 'なし',
          ),
          onTap: () {
            if (page != null) {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => page!,
                ),
              );
            }
          },
          trailing: const Icon(
            Icons.arrow_forward_ios,
          ),
        );
      },
    );
  }
  //test tag
}

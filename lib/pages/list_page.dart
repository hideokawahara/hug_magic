//Packages
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//ViewModels
import 'package:hug_magic/view_models/main_riverpod.dart';

class ListPage extends ConsumerWidget {
  ListPage({Key? key}) : super(key: key);

  final contentNotifierProvider = ContentsViewModel.contentNotifierProvider;
  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hug Magic'),
      ),
      body: ListPageBody(),
      floatingActionButton: FloatingActionButton(
        child: Text(
          ref.watch(contentNotifierProvider).count.toString(),
        ),
        onPressed: () {
          ref.read(contentNotifierProvider.notifier).increment();
        },
      ),
    );
  }
}

class ListPageBody extends ConsumerWidget {
  ListPageBody({Key? key}) : super(key: key);
  final contentNotifierProvider = ContentsViewModel.contentNotifierProvider;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(contentNotifierProvider);
    final List<Map<String, dynamic>> list = state.contents;
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

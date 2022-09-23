//Packages
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//ViewModels
import 'package:hug_magic/view_models/list_view_model.dart';

class ListPage extends StatelessWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ListViewModel(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Hug Magic'),
        ),
        body: const ListPageBody(),
      ),
    );
  }
}

class ListPageBody extends StatelessWidget {
  const ListPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> list =
        Provider.of<ListViewModel>(context, listen: false).list;
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
}

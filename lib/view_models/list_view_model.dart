//Packages
import 'package:flutter/material.dart';

//Pages
import 'package:hug_magic/pages/map_page.dart';
import 'package:hug_magic/pages/toggle_page.dart';

class ListViewModel extends ChangeNotifier {
  final List<Map<String, dynamic>> _list = [
    {
      'name': '地図',
      'page': const MapPage(),
      'icon': const Icon(Icons.maps_home_work),
    },
    {
      'name': 'トグル',
      'page': const TogglePage(),
      'icon': const Icon(Icons.toggle_off_outlined),
    },
    {
      'name': '地図',
      'page': const MapPage(),
      'icon': const Icon(Icons.maps_home_work),
    },
    {
      'name': '地図',
      'page': const MapPage(),
      'icon': const Icon(Icons.maps_home_work),
    },
  ];
  List<Map<String, dynamic>> get list {
    return [..._list];
  }
}

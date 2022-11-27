//Packages
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

//Pages
import 'package:hug_magic/pages/map_page.dart';
import 'package:hug_magic/pages/toggle_page.dart';
import 'package:hug_magic/pages/pull_to_refresh_page.dart';

class ContentsState {
  List<Map<String, dynamic>> contents = [
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
      'name': 'プルトゥリフレッシュ',
      'page': const PullToRefreshPage(),
      'icon': const Icon(Icons.refresh),
    },
    {
      'name': '地図',
      'page': const MapPage(),
      'icon': const Icon(Icons.maps_home_work),
    },
  ];
  final int count;

  ContentsState({
    required this.count,
  });
}

class ContentsNotifier extends StateNotifier<ContentsState> {
  ContentsNotifier()
      : super(() {
          print('again?');
          return ContentsState(count: 0);
        }());

  void increment() {
    print(state.count);
    state = ContentsState(count: state.count + 1);
    state.contents = [];
    print('tap!');
    print(state.count);
  }
}

class ContentsViewModel {
  static final contentNotifierProvider =
      StateNotifierProvider<ContentsNotifier, ContentsState>(
    (_) => ContentsNotifier(),
  );
}

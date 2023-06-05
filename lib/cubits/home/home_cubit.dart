import 'dart:async';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/consts/app_consts.dart';
import 'home_state.dart';

class HomeScreenCubit extends Cubit<HomeScreenState> {
  HomeScreenCubit()
      : super(const HomeScreenState(stage: HomeScreenStage.dummy)) {

  }



  // _clearLocalUri() async{
  //   final sharedPref = await SharedPreferences.getInstance();
  //   await sharedPref.remove(urlKey);
  //   print(sharedPref.getString(urlKey));
  // }


  Future<String> _getLocalUrl() async {
    final sharedPref = await SharedPreferences.getInstance();
    final String? url = sharedPref.getString(urlKey);
    return url ?? "";
  }

  Future<void> _setLocalUrl(String url) async {
    final sharedPref = await SharedPreferences.getInstance();
    sharedPref.setString(urlKey, url);
  }
}

/*
 * @Description: 
 * @Autor: ilmari
 * @Date: 2021-04-19 16:10:54
 * @LastEditors: ilmari
 * @LastEditTime: 2021-05-12 16:25:29
 */
import 'package:flutter/material.dart';
import 'package:flutter_getx_project_template/app/utils/sp_utils/sp_utils.dart';
import 'package:flutter_getx_project_template/my_app.dart';
import 'package:statsfl/statsfl.dart';

import 'app/plugins/options/options.dart';

void main() async {
  await initApp(Environment.prod);
  runApp(StatsFl(
    isEnabled: true, //Toggle on/off
    width: 80, //Set size
    height: 30, //
    maxFps: 90, // Support custom FPS target (default is 60)
    // showText: true, // Hide text label
    sampleTime: .5, //Interval between fps calculations, in seconds.
    totalTime: 15, //Total length of timeline, in seconds.
    align: Alignment.centerRight,
    child: MyApp(),
  ));
}

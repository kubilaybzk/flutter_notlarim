import 'package:flutter/material.dart';
import 'package:flutter_notlarim/navigation/general_lesson_notes/general_main.dart';
import 'package:flutter_notlarim/navigation/lesson6/lesson6_routes.dart';
import 'package:flutter_notlarim/navigation/lesson8/lesson8_routes.dart';
import 'genel_tasarimlar/center.dart';
import 'genel_tasarimlar/box_decoration_lessons.dart';
import 'genel_tasarimlar/gridwiew_kullanimi.dart';
import 'genel_tasarimlar/listview_kullanma.dart';
import 'navigation/lesson7/lesson7_routes.dart';
import 'navigation/losson1/first_lesson_main.dart';
/*
import 'row_column_lesson.dart';
import 'expanded_flexible_lesson.dart';
import 'statelesswidget_statefulwidget_lessons.dart';
import 'image_widgets.dart';
import 'buttons.dart';
import 'cardlistview.dart';
import 'custom_scrool_view_notes.dart';
import 'grid_view_kullanimi.dart';
*/
import 'navigation/lesson2/lesson2_willpop.dart';
import 'navigation/lesson3/lesson3_another_pops.dart';
import 'navigation/lesson4/lesson4_routes.dart';
import 'navigation/lesson5/lesson5_routes.dart';
////////////////////////////////////////////////////////////////////////////////////////////////////////////////
import 'package:flutter_notlarim/genel_tasarimlar/box_decoration_lessons.dart';
import 'package:flutter_notlarim/genel_tasarimlar/buttons.dart';
import 'package:flutter_notlarim/genel_tasarimlar/cardlistview.dart';
import 'package:flutter_notlarim/genel_tasarimlar/center.dart';
import 'package:flutter_notlarim/genel_tasarimlar/custom_scrool_view_notes.dart';
import 'package:flutter_notlarim/genel_tasarimlar/expanded_flexible_lesson.dart';
import 'package:flutter_notlarim/genel_tasarimlar/grid_view_kullanimi.dart';
import 'package:flutter_notlarim/genel_tasarimlar/gridwiew_kullanimi.dart';
import 'package:flutter_notlarim/genel_tasarimlar/image_widgets.dart';
import 'package:flutter_notlarim/genel_tasarimlar/listview_kullanma.dart';
import 'package:flutter_notlarim/genel_tasarimlar/row_column_lesson.dart';
import 'package:flutter_notlarim/genel_tasarimlar/statelesswidget_statefulwidget_lessons.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //return MyCenterApp();
    //return box_decoration_lesson();
    //return box_decoration_lesson2();
    //return box_decoration_lesson_with_linked_image();
    //return row_column_lessons();
    //return expanded_flexible_lesson();
    //return statelesswidget_lessons();
    //return Elemanlar();
    //return buttons();
    //return cardlistview();
    //return listview_kullanma();
    //return gridwiew_kullanimi();
    //return custom_scrool_view_notes();
    //return GridViewOrnek();
    //return first_lesson_main();
    //return lesson2_willpop();
    //return lesson3_another_pops();
    //return lesson4_routes();
    //return lesson5_routes();       // OnGenerated Route Kullanımı ve Önemi
    //return lesson6_routes(); //ModalRoute ile Yeni Sayfalara Veri Göndermek
    //return general_main(); //General Navigation kodları . (Emre Altunbilek'in dersleri)
    //return lesson7_routes(); // Kurucular ile Yeni Sayfalara Veri Göndermek
    return lesson8_routes(); // PopUntil ve PushNamedRemoveUntil Kullanımları
  }
}

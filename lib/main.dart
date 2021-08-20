import 'package:flutter/material.dart';
import 'center.dart';
import 'box_decoration_lessons.dart';
import 'gridwiew_kullanimi.dart';
import 'listview_kullanma.dart';
import 'navigation/losson1/first_lesson_main.dart';
import 'row_column_lesson.dart';
import 'expanded_flexible_lesson.dart';
import 'statelesswidget_statefulwidget_lessons.dart';
import 'image_widgets.dart';
import 'buttons.dart';
import 'cardlistview.dart';
import 'custom_scrool_view_notes.dart';
import 'grid_view_kullanimi.dart';
import 'navigation/lesson2/lesson2_willpop.dart';
import 'navigation/lesson3/lesson3_another_pops.dart';
import 'navigation/lesson4/lesson4_routes.dart';

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
    return lesson4_routes();
  }
}

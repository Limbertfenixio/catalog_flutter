import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  'add_alert': Icons.add_alert,
  'accessibility': Icons.accessibility,
  'folder_open': Icons.folder_open,
  'horizontal_split': Icons.horizontal_split,
  'smart_button_sharp': Icons.smart_button_sharp,
  'dynamic_form': Icons.dynamic_form,
  'menu': Icons.menu,
  'ad_units': Icons.ad_units,
  'ad_units_outlined': Icons.ad_units_outlined,
  'perm_data_setting_outlined': Icons.perm_data_setting_outlined,
  'text_fields': Icons.text_fields,
  'animation': Icons.animation,
  'view_array': Icons.view_array,
  'table_chart_rounded': Icons.table_chart_rounded,
  'timer': Icons.timer,
  'format_shapes': Icons.format_shapes,
  'display_settings': Icons.display_settings,
  'gesture': Icons.gesture,
  'image': Icons.image,
  'list': Icons.list,
  'content_paste_rounded': Icons.content_paste_rounded,
  'tab': Icons.tab,
};

Icon getIcon(String nameIcon) {
  return Icon(
    _icons[nameIcon],
    color: Colors.blue,
  );
}

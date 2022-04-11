import 'package:flutter/material.dart';

void goToPage(BuildContext context, String routeName, [List<dynamic>? params]) {
  Navigator.of(context).pushNamed(routeName);
}

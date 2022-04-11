//import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:widget_catalog/src/bloc/user/user_bloc.dart';
import 'package:widget_catalog/src/providers/theme_provider.dart';
import 'package:widget_catalog/src/providers/user_provider/user_provider.dart';
import 'package:widget_catalog/src/routes/routes.dart';
import 'package:widget_catalog/src/theme/dark_theme.dart';
import 'package:widget_catalog/src/theme/light_theme.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => UserBloc()),
      ],
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider<UserProvider>(
            create: (context) => UserProvider(),
          ),
          ChangeNotifierProvider<ThemeProvider>(
            create: (context) => ThemeProvider(),
          ),
        ],
        child: Consumer<ThemeProvider>(
          builder: (context, value, child) => GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: '$value', //Widget Catalog
            theme: value.getIsDarkTheme ? DarkTheme.theme : LightTheme.theme,
            //builder: DevicePreview.appBuilder,
            //home: ResponsiveDashboardMainPage(),
            routes: routes,
            initialRoute: '/',
          ),
        ),
      ),
    );
  }
}

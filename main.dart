import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sqfliteinternship/alert/showdialogalert.dart';
import 'package:sqfliteinternship/formtaskdemo/logdemo.dart';
import 'package:sqfliteinternship/screen/splash.dart';
import 'formtaskdemo/form2.dart';
import 'formtaskdemo/formdemo.dart';
import 'formtaskdemo/regdemo.dart';
import 'home/themee.dart';
import 'product/productpage.dart';



void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ModelTheme(),
      child: Consumer<ModelTheme>(
          builder: (context, ModelTheme themeNotifier, child) {
            return MaterialApp(
              title: 'Flutter Demo',
              theme: themeNotifier.isDark
                  ? ThemeData(
                brightness: Brightness.dark,
              )
                  : ThemeData(
                  brightness: Brightness.light,
                  primaryColor: Colors.green,
                  primarySwatch: Colors.green
              ),
              debugShowCheckedModeBanner: false,
              home:FD(),
            );
          }
      ),
    );
  }
}

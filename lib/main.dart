import 'package:flutter/material.dart';
import 'package:flutter_im_demo/app.dart';
import 'package:flutter_im_demo/loading.dart';
import 'package:flutter_im_demo/search.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

void main() =>
    runApp(MaterialApp(
        debugShowCheckedModeBanner: false,
        title: '聊天室',
        theme: mDefaultTheme,
        routes: <String, WidgetBuilder>{
          'app': (BuildContext context) => new App(),
          '/friends':  (_) => new WebviewScaffold(
            //Webview插件
            url: "https://flutter.io/",
            appBar: new AppBar(
              title: new Text("Flutter官网"),
            ),
            withZoom: true,
            withLocalStorage: true,
          ),
          'search': (_) => new Search()
        },
        //指定首页 默认为加载页面
        home: new LoadingPage(),
    ));

//自定义主题 绿色小清新风格
final ThemeData mDefaultTheme = new ThemeData(
  primaryColor: Colors.green,
  scaffoldBackgroundColor: Color(0xFFebebeb),
  cardColor: Colors.green,
);

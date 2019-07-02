import 'package:flutter/material.dart';
import './demo/listview_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // 干掉debug条
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70 // 按钮水波纹效果
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TabBar：用标签形式展示内容 TabController, TabBarView, Tab
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[100], // 设置整体背景色
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigation',
            onPressed: () => debugPrint('Navigation button is pressed'),
          ),
          title: Text('FLUTTER'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Navigation',
              onPressed: () => debugPrint('Search button is pressed'),
            )
          ],
          elevation: 0.0, // 设置titleBar下阴影
          bottom: TabBar(
            unselectedLabelColor: Colors.black38, // 未激活的tab颜色
            indicatorColor: Colors.black54, // 状态指示器
            indicatorSize: TabBarIndicatorSize.label, // 和图标一般大小
            // indicatorSize: TabBarIndicatorSize.tab, // 和tab一般大小
            indicatorWeight: 1.0,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist)),
              Tab(icon: Icon(Icons.change_history)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          )
        ),
        // body: Hello()
        // body: ListViewDemo()
        body: TabBarView(
          children: <Widget>[
            Icon(Icons.local_florist, size: 128.0, color: Colors.black12),
            Icon(Icons.change_history, size: 128.0, color: Colors.black12),
            Icon(Icons.directions_bike, size: 128.0, color: Colors.black12),
          ],
        ),
        // drawer: Text('This is drawer'),// 左边显示
        // endDrawer: Text('This is drawer'), // 右边显示
        drawer: Container(
          color: Colors.white,
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('This is drawer')
            ],
          ),
        ),
      )
    );
  }
}

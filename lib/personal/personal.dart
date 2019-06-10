import 'package:flutter/material.dart';
import 'package:flutter_im_demo/common/im_item.dart';
import 'package:flutter_im_demo/common/touch_callback.dart';

//我的页面
class Personal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 20),
            color: Colors.white,
            height: 80,
            child: TouchCallBack(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 12, right: 15),
                    child: Image.asset('images/yixiu.jpeg'),
                    width: 70,
                    height: 70,
                  ),
                  Expanded(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '一休',
                        style:
                            TextStyle(fontSize: 18, color: Color(0xff353535)),
                      ),
                      Text(
                        '账号 yixiu',
                        style:
                            TextStyle(fontSize: 14, color: Color(0xffa9a9a9)),
                      )
                    ],
                  )),
                  Container(
                    margin: EdgeInsets.only(left: 12, right: 15),
                    child: Image.asset(
                      'images/code.png',
                      width: 24,
                      height: 24,
                    ),
                  )
                ],
              ),
              onPressed: () {},
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            color: Colors.white,
            child: ImItem(
              title: '好友动态',
              imagePath: 'images/icon_me_friends.png',
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            color: Colors.white,
            child: Column(
              children: <Widget>[
                ImItem(
                  title: '消息管理',
                  imagePath: 'images/icon_me_message.png',
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: Divider(
                    height: 0.5,
                    color: Color(0xffd9d9d9),
                  ),
                ),
                ImItem(
                  title: '我的相册',
                  imagePath: 'images/icon_me_photo.png',
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: Divider(
                    height: 0.5,
                    color: Color(0xffd9d9d9),
                  ),
                ),
                ImItem(
                  title: '我的文件',
                  imagePath: 'images/icon_me_file.png',
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: Divider(
                    height: 0.5,
                    color: Color(0xffd9d9d9),
                  ),
                ),
                ImItem(
                  title: '联系客服',
                  imagePath: 'images/icon_me_service.png',
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            color: Colors.white,
            child: ImItem(
              title: '清理缓存',
              imagePath: 'images/icon_me_clear.png',
            ),
          )
        ],
      ),
    );
  }
}

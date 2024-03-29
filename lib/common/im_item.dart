import 'package:flutter/material.dart';
import 'package:flutter_im_demo/common/touch_callback.dart';

class ImItem extends StatelessWidget {
  final String title;
  final String imagePath;
  final Icon icon;

  ImItem({Key key, this.title, this.imagePath, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TouchCallBack(
      onPressed: () {
        switch (title) {
          case '好友动态':
            Navigator.pushNamed(context, '/friends');
            break;
          case '联系客服':
            break;
        }
      },
      child: Container(
        height: 50,
        child: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 10, left: 10),
              child: imagePath != null
                  ? Image.asset(
                      imagePath,
                      fit: BoxFit.cover,
                      width: 32,
                      height: 32,
                    )
                  : SizedBox(
                      height: 32,
                      width: 32,
                      child: icon,
                    ),
            ),
            Text(
              title,
              style: TextStyle(fontSize: 16, color: Color(0xff353535)),
            ),
          ],
        ),
      ),
    );
  }
}

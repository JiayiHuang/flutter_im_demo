import 'package:flutter/material.dart';

// 触摸回调组件
class TouchCallBack extends StatefulWidget {
  final Widget child;
  final VoidCallback onPressed;
  final bool isFeed;
  final Color background;

  TouchCallBack(
      {Key key,
      this.child,
      this.onPressed,
      this.isFeed,
      this.background: const Color(0xffd8d8d8)})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return TouchState();
  }
}

class TouchState extends State<TouchCallBack> {
  Color color = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        color: color,
        child: widget.child,
      ),
      onTap: widget.onPressed,
      onPanDown: (d) {
        if (widget.isFeed == false) return;
        setState(() {
          color = widget.background;
        });
      },
      onPanCancel: () {
        setState(() {
          color = Colors.transparent;
        });
      },
    );
  }
}

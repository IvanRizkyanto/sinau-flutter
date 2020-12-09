import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Box extends StatelessWidget {
  double _containerHeight = 0;
  double _containerWidth = 0;
  // ignore: avoid_init_to_null
  String _containerTextContent = null;

  double _containerPaddingLeft = 0;
  double _containerPaddingTop = 0;
  double _containerPaddingRight = 0;
  double _containerPaddingBottom = 0;
  double _containerMarginLeft = 0;
  double _containerMarginTop = 0;
  double _containerMarginRight = 0;
  double _containerMarginBottom = 0; // 0 = default value

  // constructor
  Box(containerHeight, containerWidth, containerTextContent) {
    this._containerHeight = containerHeight;
    this._containerWidth = containerWidth;
    this._containerTextContent = containerTextContent;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      height: this._containerHeight,
      width: this._containerWidth,
      padding: EdgeInsets.fromLTRB(
          this._containerPaddingLeft,
          this._containerPaddingTop,
          this._containerPaddingRight,
          this._containerPaddingBottom),
      margin: EdgeInsets.fromLTRB(
          this._containerMarginLeft,
          this._containerMarginTop,
          this._containerMarginRight,
          this._containerMarginBottom),
      child: Center(
          child: Text(
        this._containerTextContent,
        style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold),
      )),
    );
  }

  setPadding(paddingLeft, paddingTop, paddingRight, paddingBottom) {
    this._containerPaddingLeft = paddingLeft;
    this._containerPaddingTop = paddingTop;
    this._containerPaddingRight = paddingRight;
    this._containerPaddingBottom = paddingBottom;
  }

  setMargin(marginLeft, marginTop, marginRight, marginBottom) {
    this._containerMarginLeft = marginLeft;
    this._containerMarginTop = marginTop;
    this._containerMarginRight = marginRight;
    this._containerMarginBottom = marginBottom;
  }
}

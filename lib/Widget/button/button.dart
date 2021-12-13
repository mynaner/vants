import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vants/Widget/button/button_model.dart';
import 'package:vants/Widget/button/button_style.dart';
import 'package:vants/theme/theme.dart';

class VButton extends StatelessWidget {
  final VoidCallback? onTap;

  final VbuttonType type;
  final Widget? child;
  final Text? text;
  final bool block;
  final bool disabled;

  /// 通过 plain 属性将按钮设置为朴素按钮，朴素按钮的文字为按钮颜色，背景为白色。
  final bool plain;

  /// 设置 hairline 属性可以展示 0.5 的细边框。 前置条件为 plain=true 否则无明显效果
  final bool hairline;
  //
  final bool loading;
  // 通过 shape 设置方形/圆形/一点点圆角。
  final VButtonShape shape;

  final VButtonSize size;

  final Icon? icon;
  const VButton(
      {Key? key,
      this.onTap,
      this.child,
      this.type = VbuttonType.primary,
      this.text,
      this.block = false,
      this.plain = false,
      this.disabled = false,
      this.hairline = false,
      this.loading = false,
      this.shape = VButtonShape.little,
      this.size = VButtonSize.normal,
      this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    VButtonStyle style = VButtonStyle(
      type: type,
      plain: plain,
      hairline: hairline,
      shap: shape,
      size: size,
      loading: loading,
    );

    // Widget widget = child ?? text;

    ButtonStyle buttonStyle = ButtonStyle(
      backgroundColor: style.backgroundColor,
      shape: style.shape,
      side: style.side,
      elevation: MaterialStateProperty.all(0),
      overlayColor: style.overlayColor,
      textStyle: style.textStyle,
      foregroundColor: style.foregroundColor,
      padding: style.padding,
      //设置按钮的大小
      minimumSize: style.minimumSize,
      alignment: Alignment.center,
    );
    Widget widget = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [icon ?? Container(), child ?? text ?? Container()],
    );
    if (loading) {
      widget = Row(
        children: [
          style.loadingStatus,
          Container(),
          const SizedBox(width: 5),
          widget
        ],
      );
    }

    if (type == VbuttonType.info || plain) {
      if (block) {
        return OutlinedButton(
          onPressed: disabled ? null : onTap,
          child: widget,
          style: buttonStyle,
        );
      }
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            alignment: block ? Alignment.center : null,
            child: OutlinedButton(
              onPressed: disabled ? null : onTap,
              child: widget,
              style: buttonStyle,
            ),
          ),
        ],
      );
    }

    if (block) {
      return OutlinedButton(
        onPressed: disabled ? null : onTap,
        child: widget,
        style: buttonStyle,
      );
    }
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        ElevatedButton(
          onPressed: disabled ? null : onTap,
          child: widget,
          style: buttonStyle,
        ),
      ],
    );
  }
}

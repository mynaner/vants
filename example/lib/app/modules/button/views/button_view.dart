import 'dart:math';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:vants_ui/vants.dart';

import '../controllers/button_controller.dart';

class ButtonView extends GetView<ButtonController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text('Button')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Text("按钮类型", style: TextStyle(color: Colors.black45)),
            Wrap(
              children: [
                // Container(
                //   margin: EdgeInsets.symmetric(vertical: 2),
                //   height: 42,
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(999),
                //     gradient: LinearGradient(colors: [Colors.blue, Colors.red]),
                //   ),
                //   child: VButton(
                //     text: Text("主要按钮"),
                //     type: VbuttonType.primary,
                //     color: Colors.transparent,
                //     shape: VButtonShape.round,
                //     onTap: () {},
                //   ),
                // ),
                // Container(
                //   margin: EdgeInsets.symmetric(vertical: 2),
                //   height: 42,
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(999),
                //     gradient: LinearGradient(colors: [Colors.blue, Colors.red]),
                //   ),
                //   padding: EdgeInsets.all(1),
                //   child: VButton(
                //     text: Text("主要",
                //         style: TextStyle(
                //           foreground: Paint()
                //             ..shader = LinearGradient(
                //                 colors: [Colors.blue, Colors.red]).createShader(
                //               Rect.fromLTWH(0, 0, Get.width, Get.height),
                //             ),
                //         )),
                //     type: VbuttonType.primary,
                //     plain: true,
                //     color: Colors.transparent,
                //     shape: VButtonShape.round,
                //     onTap: () {},
                //   ),
                // ),
                // SizedBox(width: 10),
                VButton(
                  text: Text("主要按钮"),
                  type: VbuttonType.primary,
                  onTap: () {},
                ),
                SizedBox(width: 10),
                VButton(
                  text: Text("成功按钮"),
                  type: VbuttonType.success,
                  onTap: () {},
                ),
                SizedBox(width: 10),
                VButton(
                  text: Text("危险按钮"),
                  type: VbuttonType.danger,
                  onTap: () {},
                ),
                Container(
                  child: VButton(
                    text: Text("信息按钮"),
                    type: VbuttonType.info,
                    onTap: () {},
                  ),
                ),
                SizedBox(width: 10),
                VButton(
                  text: Text("警告按钮"),
                  type: VbuttonType.warning,
                  onTap: () {},
                ),
              ],
            ),
            Text("朴素按钮", style: TextStyle(color: Colors.black45)),
            Container(
              child: Wrap(
                children: [
                  VButton(
                    text: Text("朴素按钮"),
                    type: VbuttonType.primary,
                    plain: true,
                    onTap: () {},
                  ),
                  SizedBox(width: 10),
                  VButton(
                    text: Text("朴素按钮"),
                    type: VbuttonType.warning,
                    onTap: () {},
                    plain: true,
                  ),
                ],
              ),
            ),
            Text("细边框", style: TextStyle(color: Colors.black45)),
            Container(
              child: Wrap(
                children: [
                  VButton(
                    text: Text("细边框按钮"),
                    type: VbuttonType.primary,
                    plain: true,
                    hairline: true,
                    onTap: () {},
                  ),
                  SizedBox(width: 10),
                  VButton(
                    text: Text("细边框按钮"),
                    hairline: true,
                    type: VbuttonType.warning,
                    onTap: () {},
                    plain: true,
                  ),
                ],
              ),
            ),
            Text("禁用状态", style: TextStyle(color: Colors.black45)),
            Container(
              child: Wrap(
                children: [
                  VButton(
                    text: Text("禁用状态"),
                    type: VbuttonType.primary,
                    disabled: true,
                    onTap: () {},
                  ),
                  SizedBox(width: 10),
                  VButton(
                    text: Text("禁用状态"),
                    disabled: true,
                    plain: true,
                    type: VbuttonType.warning,
                    onTap: () {},
                  ),
                  SizedBox(width: 10),
                  VButton(
                    text: Text("禁用状态"),
                    disabled: true,
                    type: VbuttonType.info,
                    onTap: () {},
                  ),
                ],
              ),
            ),
            Text("加载状态", style: TextStyle(color: Colors.black45)),
            Container(
              child: Wrap(
                children: [
                  VButton(
                    text: Text("加载中..."),
                    type: VbuttonType.primary,
                    loading: true,
                    onTap: () {},
                  ),
                  SizedBox(width: 10),
                  VButton(
                    loading: true,
                    type: VbuttonType.warning,
                    onTap: () {},
                  ),
                  SizedBox(width: 10),
                  VButton(
                    loading: true,
                    type: VbuttonType.info,
                    onTap: () {},
                  ),
                ],
              ),
            ),
            Text("按钮形状", style: TextStyle(color: Colors.black45)),
            Container(
              child: Wrap(
                children: [
                  VButton(
                    shape: VButtonShape.square,
                    type: VbuttonType.warning,
                    text: Text("方形按钮"),
                    onTap: () {},
                  ),
                  SizedBox(width: 10),
                  VButton(
                    text: Text("圆形按钮"),
                    type: VbuttonType.primary,
                    shape: VButtonShape.round,
                    onTap: () {},
                  ),
                  SizedBox(width: 10),
                  VButton(
                    text: Text("圆形按钮"),
                    type: VbuttonType.primary,
                    shape: VButtonShape.round,
                    plain: true,
                    onTap: () {},
                  ),
                ],
              ),
            ),
            Text("图标按钮", style: TextStyle(color: Colors.black45)),
            Container(
              child: Wrap(
                children: [
                  VButton(
                    type: VbuttonType.primary,
                    shape: VButtonShape.round,
                    icon: Icon(Icons.add),
                    onTap: () {},
                  ),
                  SizedBox(width: 10),
                  VButton(
                    shape: VButtonShape.square,
                    type: VbuttonType.warning,
                    icon: Icon(Icons.add),
                    text: Text("按钮形状"),
                    onTap: () {},
                  ),
                  SizedBox(width: 10),
                  VButton(
                    shape: VButtonShape.square,
                    type: VbuttonType.warning,
                    icon: Icon(Icons.add),
                    plain: true,
                    text: Text("按钮形状"),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            Text("按钮大小", style: TextStyle(color: Colors.black45)),
            Container(
              child: Wrap(
                children: [
                  VButton(
                    text: Text("按钮大小"),
                    type: VbuttonType.primary,
                    size: VButtonSize.large,
                    onTap: () {},
                  ),
                  SizedBox(width: 10),
                  VButton(
                    text: Text("按钮大小"),
                    type: VbuttonType.success,
                    size: VButtonSize.normal,
                    shape: VButtonShape.round,
                    onTap: () {},
                  ),
                  SizedBox(width: 10),
                  VButton(
                    text: Text("按钮大小"),
                    type: VbuttonType.danger,
                    size: VButtonSize.small,
                    onTap: () {},
                  ),
                  SizedBox(width: 10),
                  Container(
                    child: VButton(
                      text: Text("按钮大小"),
                      type: VbuttonType.info,
                      size: VButtonSize.mini,
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            ),
            Text("块级元素", style: TextStyle(color: Colors.black45)),
            VButton(
              text: Text("块级元素"),
              type: VbuttonType.info,
              size: VButtonSize.normal,
              block: true,
              onTap: () {},
            ),
            VButton(
              text: Text("块级元素"),
              type: VbuttonType.primary,
              block: true,
              shape: VButtonShape.round,
              onTap: () {},
            ),
            Text("自定义颜色", style: TextStyle(color: Colors.black45)),
            Row(
              children: [
                VButton(
                  text: Text("purple plain"),
                  plain: true,
                  color: Colors.purple,
                  onTap: () {},
                ),
                SizedBox(width: 10),
                VButton(
                  text: Text("info info"),
                  type: VbuttonType.info,
                  color: Colors.purple,
                  // shape: VButtonShape.round,
                  onTap: () {},
                ),
                SizedBox(width: 10),
                VButton(
                  text: Text("primary"),
                  type: VbuttonType.primary,
                  color: Colors.purple,
                  onTap: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

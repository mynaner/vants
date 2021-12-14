import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vants_ui/Widget/button/button_model.dart';
import 'package:vants_ui/theme/theme.dart';

class VButtonStyle {
  final VbuttonType type;
  final bool plain;
  late _ButtonStyle _style;
  final bool hairline;
  final VButtonShape shap;
  final bool loading;
  final VButtonSize size;
  late _ButtonSize _size;
  final Color? color;
  VButtonStyle({
    required this.type,
    required this.plain,
    required this.hairline,
    required this.shap,
    required this.size,
    required this.loading,
    this.color,
  }) {
    switch (type) {
      case VbuttonType.success:
        _style = _ButtonStyle(
          backgroundColor: plain ? VTheme.white : color ?? VTheme.successColor,
          color: VTheme.white,
          border: BorderSide(
              width: hairline ? 0.5 : 1, color: color ?? VTheme.successColor),
        );
        break;
      case VbuttonType.primary:
        _style = _ButtonStyle(
          backgroundColor: plain ? VTheme.white : color ?? VTheme.primaryColor,
          color: VTheme.white,
          border: BorderSide(
              width: hairline ? 0.5 : 1, color: color ?? VTheme.primaryColor),
        );
        break;
      case VbuttonType.info:
        _style = _ButtonStyle(
          backgroundColor: VTheme.white,
          color: VTheme.gray8,
          border: BorderSide(
              width: hairline ? 0.5 : 1, color: color ?? VTheme.gray4),
        );
        break;
      case VbuttonType.danger:
        _style = _ButtonStyle(
          backgroundColor: plain ? VTheme.white : color ?? VTheme.dangerColor,
          color: VTheme.white,
          border: BorderSide(
              width: hairline ? 0.5 : 1, color: color ?? VTheme.dangerColor),
        );
        break;
      case VbuttonType.warning:
        _style = _ButtonStyle(
          backgroundColor: plain ? VTheme.white : color ?? VTheme.warningColor,
          color: VTheme.white,
          border: BorderSide(
              width: hairline ? 0.5 : 1, color: color ?? VTheme.warningColor),
        );
        break;
      default:
    }

    switch (size) {
      case VButtonSize.large:
        _size = _ButtonSize(
          fontSize: VTheme.fontSizeLg,
          size: Size(VTheme.paddingLg * 6, VTheme.paddingLg * 3),
        );
        break;
      case VButtonSize.normal:
        _size = _ButtonSize(
          fontSize: VTheme.fontSizeMd,
          size: Size(VTheme.paddingMd * 6, VTheme.paddingMd * 3.5),
        );
        break;
      case VButtonSize.small:
        _size = _ButtonSize(
          fontSize: VTheme.fontSizeSm,
          size: Size(VTheme.paddingSm * 6, VTheme.paddingSm * 3.5),
        );
        break;

      case VButtonSize.mini:
        _size = _ButtonSize(
          fontSize: VTheme.fontSizeXs,
          padding: EdgeInsets.symmetric(horizontal: VTheme.paddingXs),
          size: Size(VTheme.paddingXs * 6, VTheme.paddingXs * 3.5),
        );
        break;
    }
  }

  MaterialStateProperty<Color?> get backgroundColor {
    return MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.disabled)) {
        if (type == VbuttonType.info) {
          return VTheme.gray3;
        }
        return _style.backgroundColor.withOpacity(.5);
      }

      return _style.backgroundColor;
    });
  }

  MaterialStateProperty<Color?> get overlayColor {
    return MaterialStateProperty.resolveWith((states) {
      if (loading) {
        return Colors.transparent;
      }
      if (type == VbuttonType.info) {
        return VTheme.gray3;
      } else if (plain) {
        return _style.border.color.withOpacity(.2);
      }
      return VTheme.white.withOpacity(.3);
    });
  }

  MaterialStateProperty<RoundedRectangleBorder?> get shape {
    return MaterialStateProperty.resolveWith((states) {
      var radius = VTheme.borderRadiusSm;
      switch (shap) {
        case VButtonShape.little:
          break;
        case VButtonShape.round:
          radius = VTheme.borderRadiusMax;
          break;
        case VButtonShape.square:
          radius = 0;
          break;
      }
      return RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
      );
    });
  }

  MaterialStateProperty<BorderSide?> get side {
    return MaterialStateProperty.resolveWith((states) {
      if (type == VbuttonType.info || plain) {
        return _style.border;
      }
      return BorderSide.none;
    });
  }

  MaterialStateProperty<TextStyle?> get textStyle {
    return MaterialStateProperty.resolveWith((states) {
      return TextStyle(fontSize: _size.fontSize);
    });
  }

  MaterialStateProperty<EdgeInsets?> get padding {
    return MaterialStateProperty.all(_size.padding);
  }

  MaterialStateProperty<Size?> get minimumSize {
    return MaterialStateProperty.all(_size.size);
  }

  MaterialStateProperty<Color?> get foregroundColor {
    return MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.disabled)) {
        if (type == VbuttonType.info) {
          return _style.color.withOpacity(.5);
        }
        return (plain ? _style.border.color : _style.color).withOpacity(.8);
      }
      if (type == VbuttonType.info) {
        return color ?? _style.color;
      }

      return plain ? (color ?? _style.border.color) : _style.color;
    });
  }

  Widget get loadingStatus {
    return const CupertinoActivityIndicator(
      radius: 9,
    );
    // return const CupertinoActivityIndicator(
    //   color: Colors.white,
    // );
  }

  // TextStyle get textStyle {
  //   if (type == VbuttonType.info) {
  //     return TextStyle(color: _style.color);
  //   }
  //   return TextStyle(color: plain ? _style.border.color : _style.color);
  // }
}

class _ButtonStyle {
  Color color;
  Color backgroundColor;
  BorderSide border;

  _ButtonStyle({
    required this.backgroundColor,
    required this.border,
    required this.color,
  });
}

class _ButtonSize {
  EdgeInsets? padding;
  double? fontSize;
  Size? size;
  _ButtonSize({this.padding, this.fontSize, this.size});
}

import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color blueGray10072 = fromHex('#72d9d9d9');

  static Color black9007f = fromHex('#7f000000');

  static Color whiteA7004c = fromHex('#4cffffff');

  static Color gray700 = fromHex('#616161');

  static Color gray4007f = fromHex('#7fc4c4c4');

  static Color black9003f = fromHex('#3f000000');

  static Color green600 = fromHex('#438e5d');

  static Color teal300 = fromHex('#4aa9bc');

  static Color black90000 = fromHex('#00000000');

  static Color green600Ce01 = fromHex('#ce438e5d');

  static Color black900 = fromHex('#000000');

  static Color bluegray400 = fromHex('#888888');

  static Color green600Ce = fromHex('#ce438e5c');

  static Color black90019 = fromHex('#19000000');

  static Color green60001 = fromHex('#438e5c');

  static Color whiteA700 = fromHex('#ffffff');

  static Color gray40072 = fromHex('#72c4c4c4');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

import 'package:flutter/cupertino.dart';

extension NumSize on num {
  SizedBox get spaceH {
    return SizedBox(
      height: toDouble(),
    );
  }

  SizedBox get spaceW {
    return SizedBox(
      width: toDouble(),
    );
  }
}

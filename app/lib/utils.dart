import 'package:flutter/widgets.dart';

double getSizeHeight(BuildContext context, double percentage,
    {double maxHeight}) {
  if (maxHeight != null) {
    return maxHeight * (percentage / 100);
  } else {
    return MediaQuery.of(context).size.height * (percentage / 100);
  }
}

double getSizeWidth(BuildContext context, double percentage,
    {double maxWidth}) {
  if (maxWidth != null) {
    return maxWidth * (percentage / 100);
  } else {
    return MediaQuery.of(context).size.width * (percentage / 100);
  }
}
import 'package:flutter/src/painting/text_style.dart';
import 'package:intl/intl.dart';

class Util
{
 static String getcurrentdate(dateToFormat)
  {
    if(dateToFormat!=null)
    {
      return DateFormat('dd--MM-yyyy').format(dateToFormat).toString();
    }
    else
    {
      return DateFormat('dd--MM-yyyy').format(DateTime.now()).toString();
    }
  }
}
import 'U2DynArray.dart';
import 'U2ListStrings.dart';
//import 'package:intl/intl.dart';

//
//  funcions per tractar string al estil universe
//
class U2StringUtils {
  static String u2Lower(String cadena) {
    if (cadena == null || cadena.length <= 0) {
      return '';
    }
    List<String> c = cadena.split('');
    int n = c.length;
    for (var i = 0; i < n; i++) {
      if (c[i] == U2RM) {
        c[i] = U2AM;
      } else if (c[i] == U2AM) {
        c[i] = U2VM;
      } else if (c[i] == U2VM) {
        c[i] = U2SVM;
      } else if (c[i] == U2SVM) {
        c[i] = U2TM;
      }
    }
    return c.join('');
  }

  static String u2Raise(String cadena) {
    if (cadena == null || cadena.length <= 0) {
      return '';
    }
    List<String> c = cadena.split('');
    int n = c.length;
    for (int i = 0; i < n; i++) {
      if (c[i] == U2AM) {
        c[i] = U2RM;
      } else if (c[i] == U2VM) {
        c[i] = U2AM;
      } else if (c[i] == U2SVM) {
        c[i] = U2VM;
      } else if (c[i] == U2TM) {
        c[i] = U2SVM;
      }
    }
    return c.join("");
  }

  static String u2Field(String cadena, String separa, int pos, int num1) {
    int pos2 = pos;
    int num2 = num1;
    if (cadena == null || cadena.length <= 0) {
      return '';
    }
    if (separa == null || separa.length <= 0) {
      return '';
    }
    if (pos == null || pos < 1) {
      pos2 = 1;
    }
    if (num1 == null || num1 < 1) {
      num2 = 1;
    }
    U2ListStrings s1 = new U2ListStrings(cadena, separa);
    if (num2 == 1) {
      return s1.field(pos2);
    } else {
      U2ListStrings s2 = new U2ListStrings('', separa);
      for (int i = pos2; i < pos2 + num2; i++) {
        s2.fieldStore(s1.field(i), i - pos2 + 1);
      }
      return s2.fieldJoin();
    }
  }

  static String u2Substr(String cadena, int pos, int num1) {
    int pos2 = pos;
    int num2 = num1;
    int l = cadena.length;
    if (cadena == null || l <= 0) {
      return '';
    }
    if (pos == null || pos < 1) {
      pos2 = 1;
    }
    if (num1 == null || num1 == 0) {
      num2 = 1;
    }
    if (num1 > 0) {
      int start = pos2 - 1;
      //print("start: ${start.toString()}");
      int end = pos2-1+num2;
      if (start<0) start=0;
      if (end>l) end=l;
      if ((start<0)||(start>l)||(end<0)||(end>l)) {
        return "";
      }
      return cadena.substring(start, end);
    } else if (num1 < 0) {
      //print("l: ${l.toString()}");
      int start = l - pos2 + 1 + num2;
      //print("start: ${start.toString()}");
      int end = l - pos2 +1;
      //print("end: ${end.toString()}");
      if (start<0) start=0;
      if (end>l) end=l;
      if ((start<0)||(start>l)||(end<0)||(end>l)) {
        return "";
      }
      return cadena.substring(start, end);
    }
    return '';
  }

  static String u2Left(String cadena, int num1) {
    int num2 = num1;
    if (cadena == null || cadena.length <= 0) {
      return '';
    }
    if (num1 == null || num1 <= 0) {
      num2 = 1;
    }
    return cadena.substring(0, num2);
  }

  static String u2Rigth(String cadena, int num1) {
    int num2 = num1;
    if (cadena == null || cadena.length <= 0) {
      return '';
    }
    if (num1 == null || num1 <= 0) {
      num2 = 1;
    }
    return cadena.substring(cadena.length - num2, num2);
  }

//
// Tactament data hora uniVerse
//

  static int u2Date() {
    return ((DateTime
        .now()
        .millisecondsSinceEpoch ~/ 86400000) + 732);
  }

// hora solar
  static num u2Time() {
    return ((DateTime
        .now()
        .millisecondsSinceEpoch % 86400000) / 1000);
  }

  static int DateTime2u2Date(DateTime dt) {
    //if (dt == null) {
    //  return null;
    //}
    return ((dt.millisecondsSinceEpoch ~/ 86400000) + 732);
  }

// hora solar
  static num DateTime2u2Time(DateTime dt) {
    //if (dt == null) {
    //  return null;
    //}
    return ((dt.millisecondsSinceEpoch % 86400000) / 1000);
  }

  static DateTime u2Date2DateTime(int num1) {
    //if (num1 == null) {
      //throw new Exception('Invalid Date');
      //return null;
    //}
    int v = (num1 - 732) * 86400000;
    return (new DateTime.fromMillisecondsSinceEpoch(v));
  }

  static DateTime u2Time2DateTime(num num1) {
    //if (num1 == null) {
      //throw new Exception('Invalid time');
      // return null;
    //}
    int v = (num1 * 1000).toInt();
    return (new DateTime.fromMillisecondsSinceEpoch(v));
  }

  static String DateTime2u2TADA(DateTime dt) {
    //if (dt == null) {
    //  return null;
    //}
    //DateFormat formatter = new DateFormat('yyyyMMdd');
    //return formatter.format(dt);
    return (dt.year.toString()+dt.month.toString().padLeft(2,'0')+dt.day.toString().padLeft(2,'0'));
  }

  static String DateTime2u2HHMMSS(DateTime dt) {
    //if (dt==null) {
    //  return null;
    //}
    //DateFormat formatter = new DateFormat('HHmmss');
    //return formatter.format(dt);
    return (dt.hour.toString().padLeft(2,'0')+dt.minute.toString().padLeft(2,'0')+dt.second.toString().padLeft(2,'0'));
  }

  static int u2Index(String cadena, String subcadena) {
    return (cadena.indexOf(subcadena)+1);
  }


/*
var u2TADA2DateTime = function(sTada){
if ((sTada===undefined)||(sTada==null)||(typeof sTada != 'string')) { return null; }
var s = sTada.substring(0,4)+"-"+sTada.substring(4,6)+"-"+sTada.substring(6,8)
return new Date(s)
}

var u2HHMMSS2DateTime = function(sHHMMSS){
if ((sHHMMSS===undefined)||(sHHMMSS==null)||(typeof sHHMMSS != 'string')) { return null; }
var s = sHHMMSS.substring(0,2)+":"+sTada.substring(2,4)+":"+sTada.substring(4,6)
return new Date('1970-01-01T'+s)
}

var u2Index = function(cadena, subcadena){
if ((cadena===undefined)||(cadena==null)||(typeof cadena != 'string')||(cadena=="")) { return 0; }
if ((subcadena===undefined)||(subcadena==null)||(typeof subcadena != 'string')||(subcadena=="")) { return 0; }
return cadena.indexOf(subcadena)+1
}
*/
}

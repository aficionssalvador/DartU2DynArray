import '../source/U2DynArray.dart';
import '../source/U2ListStrings.dart';
import '../source/U2StringUtils.dart';

void main() {
  print('Hello, World!');
  var a = new U2ListStrings('', '#');
  a.fieldStore('a',3);
  print(a.field(0)+' '+ a.fieldDCount().toString());

  DateTime today = new DateTime.now();
  String dateSlug =today.year.toString()+today.month.toString().padLeft(2,'0')+today.day.toString().padLeft(2,'0');
  print(dateSlug);
  print(today.hour.toString().padLeft(2,'0')+today.minute.toString().padLeft(2,'0')+today.second.toString().padLeft(2,'0'));
  print(U2StringUtils.DateTime2u2TADA(today)+U2StringUtils.DateTime2u2HHMMSS(today));

  print(U2StringUtils.u2Date().toString());
  print(U2StringUtils.DateTime2u2Date(today).toString());
  print(U2StringUtils.u2Time().toString());
  print(U2StringUtils.DateTime2u2Time(today).toString());

  print(today.timeZoneName);
  print(today.timeZoneOffset);
}
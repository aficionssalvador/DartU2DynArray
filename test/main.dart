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

  var b = new U2DynArray("");
  b.replace("a",2,3,4);
  b.replace("c3",1,2,3);
  b.replace("c2b",1,2,2);
  b.replace("c1",1,2,1);
  b.insertSubValue("c2a",1,2,2);
  print(b.extractAll());
  b.replace("a",2,0,0);
  print(b.extractAll());
  b.deleteSubValue(1,2,3);
  b.deleteSubValue(1,2,1);
  print(b.extractAll());
  print(U2StringUtils.u2Index("abc","B").toString()); 
  print(U2StringUtils.u2Index("abc","b").toString());
  print(U2StringUtils.u2Substr("abcdef",2,3)); 
  print(U2StringUtils.u2Substr("abcdef",2,-1)); 
  print(U2StringUtils.u2Substr("abcdef",2,-2)); 
  print(U2StringUtils.u2Substr("abcdef",1,-1)); 
  print(U2StringUtils.u2Substr("abcdef",1,-2)); 
  print(U2StringUtils.u2Substr("abcdef",1,-3)); 
  print(U2StringUtils.u2Substr("abcdef",1,-4)); 
  print(U2StringUtils.u2Substr("abcdef",1,-5)); 
  print(U2StringUtils.u2Substr("abcdef",1,-6)); 
  print(U2StringUtils.u2Substr("abcdef",1,-7)); 
  print(U2StringUtils.u2Substr("abcdef",1,1)); 
  print(U2StringUtils.u2Substr("abcdef",1,2)); 
  print(U2StringUtils.u2Substr("abcdef",1,3)); 
  print(U2StringUtils.u2Substr("abcdef",1,4)); 
  print(U2StringUtils.u2Substr("abcdef",1,5)); 
  print(U2StringUtils.u2Substr("abcdef",1,6)); 
  print(U2StringUtils.u2Substr("abcdef",1,7)); 
  print(U2StringUtils.u2Substr("abcdef",3,7)); 
}
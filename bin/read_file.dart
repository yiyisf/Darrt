import 'dart:io';

main() async{
  //E:\yiyi\dart\test02\text\01.txt
  try{
  File file = new File('${Directory.current.path}\\text\\01.txt');
  print(file.path);
  var strings = await file.readAsString();
  print(strings);

  List<String> list = await file.readAsLines();
  list.forEach((String line) => print(line)) ;

  var bytes = await file.readAsBytes();
//  String str = CryptoUtils.bytesToBase64(bytes);
  print(bytes);
  } catch(e){
    print('${e.runtimeType}');
  }
}
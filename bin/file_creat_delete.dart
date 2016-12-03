import 'dart:io';

main() async{
  print('Begain....!');
  var dir = await Directory.systemTemp.createTemp('dart_test');

  print(await dir.exists());

  await dir.delete();

  print(await dir.exists());


  print('End....!');
}

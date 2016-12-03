import 'dart:io';

//main() async {
//  var sysTempdir = Directory.systemTemp;
//
//  var file = new File('${sysTempdir.path}/foo.txt');
//
//  if (await file.exists()) {
//    await file.deleteSync();
//  }
//  await file.create();
//
//  print('the new file path is ${file.path}');
//
//  await file.renameSync('${sysTempdir.path}/bar.txt');
//
//  print('after rename, fule path is ${file.path}');
//}

main() async {
  // Get the system temp directory.
  var systemTempDir = Directory.systemTemp;

  // Create a file.
  var file = await new File('${systemTempDir.path}/foo.txt').create();

  // Prints path ending with `foo.txt`.
  print('The path is ${file.path}');

  // Rename the file.
  await file.rename('${systemTempDir.path}/bar.txt');

  // Prints path ending with `bar.txt`.
  print('The path is ${file.path}');
}

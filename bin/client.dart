import 'dart:io';
import 'dart:convert';

main(List<String> arguments) async {
  bool loop = true;

  var socketClient = await Socket.connect('127.0.0.1', 3000);
  print("Listening client... ");

  while (loop) {
    print("Write your message: ");
    socketClient.write(stdin.readLineSync());
  }

  await socketClient.close();
  exit(0);
}

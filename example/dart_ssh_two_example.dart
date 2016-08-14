import 'package:dart_ssh_two/dart_ssh_two.dart';

main() async{
  SSH2 ssh2 = new SSH2('ns3033565.ip-37-187-147.eu');
  if(await ssh2.connect()) {
    print('Connected');
  } else {
    print('Connection failed');
  }
}

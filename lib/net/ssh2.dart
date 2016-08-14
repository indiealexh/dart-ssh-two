library dart_ssh_two.net.ssh2;

import 'dart:async';
import 'dart:io';
import 'dart:convert';

class SSH2{
  String _host;
  int _port;
  Duration _timeout = new Duration(seconds: 10);

  Socket _sshConnection;

  SSH2(String host, [int port = 22, Duration timeout]) {
    this._host = host;
    this._port = port;
    if (timeout != null) {
      this._timeout = timeout;
    }
  }

  Future<bool> connect() async {
    try {
      this._sshConnection = await Socket.connect(this._host,this._port);
      var lines = this._sshConnection.transform(UTF8.decoder).transform(const LineSplitter());
      await for (var line in lines) {
        print(line);
      }
      return true;
    } catch (error, stack) {
      print(error);
      print(stack);
      return false;
    }
  }
}

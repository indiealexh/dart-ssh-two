library dart_ssh_two.net.ssh2;

import 'dart:async';

class ssh2{
  String _host;
  int _port;
  Duration _timeout = new Duration(seconds: 10);

  void ssh2(String host, [int port = 20, Duration timeout]) {
    this._host = host;
    this._port = port;
    if (timeout != null) {
      this._timeout = timeout;
    }
  }

  Future<bool> _connect() async {
    try {
      return true;
    } catch (error, stack) {
      return false;
    }
  }
}
